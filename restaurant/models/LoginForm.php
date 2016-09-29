<?php

namespace app\models;

use Yii;
use yii\base\Model;
use app\models\user\UserRecord;

/**
 * LoginForm is the model behind the login form.
 *
 * @property User|null $user This property is read-only.
 *
 */
class LoginForm extends Model
{
    public $username;
    public $password;
    public $rememberMe = true;

    private $_user = false;


    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            // username and password are both required
            [['username', 'password'], 'required'],
            // rememberMe must be a boolean value
            ['rememberMe', 'boolean'],
            // password is validated by validatePassword()
            ['password', 'validatePassword'],
        ];
    }

    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     *
     * @param string $attribute the attribute currently being validated
     * @param array $params the additional name-value pairs given in the rule
     */
    public function validatePassword($attribute, $params)
    {
        if ($this->hasErrors()) return;

        $user = $this->getUser();

        if (!$user || !$this->isCorrectHash($this->password, $user->password)) {
            $this->addError($attribute, 'Incorrect username or password.');
        }
    }

    /**
     * Logs in a user using the provided username and password.
     * @return boolean whether the user is logged in successfully
     */
    public function login()
    {
        if (!$this->validate()) return false;

        $user = $this->getUser();
        if (!$user) return false;
        
        return Yii::$app->user->login($user, $this->rememberMe ? 3600*24*30 : 0);
    }

    /**
     * Finds user by [[username]]
     *
     * @return User|null
     */
    public function getUser()
    {
        if ($this->_user === false) {
            $this->_user = UserRecord::findByUsername($this->username);
        }

        return $this->_user;
    }

    /**
    * @param plaintext - name of form field
    * @param hash - password hash from database 
    *
    * @return boolean - is correct hash?
    */
    private function isCorrectHash($plaintext, $hash) {
        return Yii::$app->security->validatePassword($plaintext, $hash);
    }
}
