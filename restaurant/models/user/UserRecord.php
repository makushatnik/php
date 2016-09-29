<?php

namespace app\models\user;

use Yii;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;
use yii\behaviors\TimestampBehavior;
use app\models\user\UserRecord;

/**
 * This is the model class for table "users".
 *
 * @property integer $id
 * @property string $username
 * @property string $password
 * @property string $email
 * @property integer $created_at
 */
class UserRecord extends ActiveRecord implements IdentityInterface
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
            [['password', 'email'], 'required'],
            [['created_at'], 'integer'],
            [['username', 'password', 'email', 'auth_key'], 'string', 'max' => 255],
            [['username'], 'unique'],
        ];
    }

    public function behaviors() {
        return [
            'timestamp' => TimestampBehavior::className()
        ];
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
            'email' => 'Email',
            'created_at' => 'Created At',
        ];
    }

    /** trigger */
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

    /** section IDENTITY */
    public function getId() {
        return $this->id;
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

    public static function findIdentityByAccessToken($token, $type = null) {
        throw new NotSupportedException("You can only login by username/password pair for now.");
    }
    /** end section */

    public static function findByUsername($username) {
        return static::find()->where(['username' => $username])->one();
    }
}
