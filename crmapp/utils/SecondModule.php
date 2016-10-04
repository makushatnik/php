<?php
namespace app\utils;
use yii\base\Module;

class SecondModule extends Module {
	public function init() {
		parent::init();
		$this->modules = [
			'thirdLevel' => [
				'class' => 'app\utils\ThirdModule',
				'basePath' => '@app'
			]
		];
	}
}