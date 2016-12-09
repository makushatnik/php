<?php

namespace app\models;

use Yii;
use yii\base\Model;
use app\models\User;

/**
 * LoginForm is the model behind the login form.
 *
 * @property User|null $user This property is read-only.
 *
 */
class RegisterForm extends Model
{
    public $username;
    public $email;
    public $password;
    public $password2;
    public $rememberMe = true;

    private $_user = false;


    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            [['username', 'email', 'password', 'password2'], 'required'],
            [['email'], 'string', 'max' => 30],
            [['username', 'password'], 'string', 'max' => 20],
            ['email', 'email'],
            ['rememberMe', 'boolean'],
            [['password'], 'string', 'min' => 4],
            ['password', 'string'],
            ['password2', 'string']
        ];
    }

    /**
     * Logs in a user using the provided username and password.
     * @return boolean whether the user is logged in successfully
     */
    public function register()
    {
        if (!$this->validate()) return false;
        
        if ($this->password != $this->password2) {
            Yii::$app->session->setFlash('error', 'Пароли не совпадают.');
            return false;
        }

        $user = new User;
        $user->load($this);
        if ($user->save()) {
            Yii::$app->session->setFlash('success', 'Пользователь создан.');
            return Yii::$app->user->login($user, $this->rememberMe ? 3600*24*30 : 0);
        }
        
        return false;
    }
}
