<?php
namespace app\components;

use yii\base\Widget;
use yii\helpers\Html;

/**
* 
*/
class EchoWidget extends Widget
{
	public $name;
	public $greeting;

	public function init()
	{
		parent::init();
		ob_start();
	}

	public function run() {
		$content = ob_get_clean();
		echo Html::tag('div', $content, ['class' => 'echo-widget']);
	}
}