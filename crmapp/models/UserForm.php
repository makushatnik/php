<?php
namespace app\models;
use yii\base\Model;
use app\models\user\UserRecord;
/**
* 
*/
class UserForm extends Model
{
	public $name;
	public $password;
	public $email;

	private $_user = false;

	public function rules()
	{
		return [
			[['email', 'password'], 'required'],
			[['email'], 'email'],
			[['email', 'password','name'], 'string','max' => 255],
			[['password'], 'validatePassword', 'on' => 'login']
		];
	}

	public function scenarios() {
		return [
			'login'		=> ['email','password'],
			'register'	=> ['email','password','name']
		];
	}

	public function getUser() {
		if ($this->_user === false) {
			$this->_user = UserRecord::findOne(['email' => $this->email]);
		}
		return $this->_user;
	}

	public function validatePassword($attribute, $params) {
		if (!$this->hasErrors) {
			if (!$this->getUser() || !$this->getUser()->validatePassword($this->password)) {
				$this->addError($attribute, 'Incorrect email or password.');
			}
		}
	}

	public function login() {
		if ($this->validate()) {
			if (Yii::$app->user->login($this->getUser())) return true;
		}
		return false;
	}
}