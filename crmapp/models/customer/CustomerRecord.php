<?php

namespace app\models\customer;
use yii\db\ActiveRecord;
use yii\behaviors\TimestampBehavior;
use yii\behaviors\BlameableBehavior;

class CustomerRecord extends ActiveRecord
{
    public static function tablename() {
		return 'customer';
	}
	
	public function rules() {
		return [
			['id', 'number'],
			['name', 'required'],
			['name', 'string', 'max' => 256],
			['birth_date', 'string'],
			['notes', 'safe']
		];
	}

	public function behaviors() {
		return [
			'timestamp' => TimestampBehavior::className(),
			'blame' => BlameableBehavior::className()
		];
	}

	public function getPhones() {
		return $this->hasMany(PhoneRecord::className(), ['customer_id' => 'id']);
	}

	public function getAddresses() {
		return $this->hasMany(AddressRecord::className(), ['customer_id' => 'id']);
	}

	public function getEmails() {
		return $this->hasMany(EmailRecord::className(), ['customer_id' => 'id']);
	}
}
