<?php

namespace app\models\user;

use Yii;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;
use yii\base\NotSupportedException;
use yii\behaviors\TimestampBehavior;
use yii\filters\RateLimitInterface;

/**
 * This is the model class for table "users".
 *
 * @property integer $id
 * @property string $username
 * @property string $password
 */
class UserRecord extends ActiveRecord implements IdentityInterface, RateLimitInterface
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'password', 'auth_key'], 'string', 'max' => 255],
            [['first_name', 'last_name', 'auth_key'], 'string', 'max' => 30],
            [['email'], 'string', 'max' => 50],
            [['created_at','updated_at'], 'integer'],
            ['email','email'],
            [['username'], 'unique'],
        ];
    }

    public function behaviors() {
        return [
            'timestamp' => TimestampBehavior::className(),
        ];
    }

    /**
    * For API
    */
    public function fields() {
        return [
            'id',
            'email_address' => 'email',
            //'email',
            'first_name',
            'last_name',
            'full_name' => function($model) {
                return $model->getFullName();
            },
            'created_at',
            'updated_at'
        ];
    }

    public function extraField() {
        //expose the 'role' relation
        return ['role'];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'password' => 'Password',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'email' => 'Email',
            'created_at' => 'Created at',
            'updated_at' => 'Updated at'
        ];
    }

    public function beforeSave($insert) {
        $res = parent::beforeSave($insert);

        if ($this->isAttributeChanged('password')) {
            $this->password = Yii::$app->security->generatePasswordHash($this->password);
        }
        if ($this->isNewRecord) {
            $this->auth_key = Yii::$app->security->generateRandomKey($length = 255);
        }

        return $res;
    }

    public function getId() {
        return $this->id;
    }

    public function getFullName() {
        return $this->first_name.' '.$this->last_name;
    }

    public function setFullName($name) {
        list($first_name,$last_name) = explode(" ", $name);

        $this->first_name = $first_name;
        $this->last_name = $last_name;

        return true;
    }

    public static function findIdentity($id) {
        return static::findOne($id);
    }

    public function getAuthKey() {
        return $this->auth_key;
    }

    public function validateAuthKey($authKey) {
        return $this->getAuthKey() === $authKey;
    }

    public static function findIdentityByAccessToken($token, $type = null)
    {
        //throw new NotSupportedException("You can only login by username/password pair for now.");
        return static::findOne(['access_token' => $token]);
    }

    public static function findByUsername($username) {
        return static::find()->where(['username' => $username])->one();
    }

    public function validatePassword($password) {
        return password_verify($password, $this->password);
    }

    public function getRateLimit($request, $action)
    {
        return [100,600];
    }

    public function loadAllowance($request, $action)
    {
        $allowance = 100;
        return [$allowance, time()];
    }

    public function saveAllowance($request, $action, $allowance, $timestamp)
    {

        return true;
    }
}
