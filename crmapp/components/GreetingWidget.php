<?php
namespace app\components;

use yii\base\Widget;
use yii\helpers\Html;

/**
* 
*/
class GreetingWidget extends Widget
{
	public $name;
	public $greeting;

	public function init()
	{
		parent::init();
		$hour = date('G');
		//echo 'HOUR = '.$hour;
		if ($hour >= 5 || $hour <= 11) $this->greeting = "Good Morning";
		else if ($hour >= 12 || $hour <= 18) $this->greeting = "Good Afternoon";
		else if ($hour >= 19 || $hour <= 4) $this->greeting = "Good Evening";
	}

	public function run() {
		if ($this->name === null) return Html::encode($this->greeting);
		else return Html::encode($this->greeting.', '.$this->name);
	}
}