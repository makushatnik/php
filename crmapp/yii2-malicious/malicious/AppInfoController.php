<?php
namespace malicious;
use yii\web\Controller;
use yii\helpers\Json;

/**
* 
*/
class AppInfoController extends Controller
{
	
	public function actionConfiguration()
	{
		$app = \Yii::$app;
		$config = [
			'components' => $app->components,
			'basePath' => $app->basePath,
			'params' => $app->params,
			'aliases' => \Yii::$aliases
		];
		return Json::decode($config);
	}
}