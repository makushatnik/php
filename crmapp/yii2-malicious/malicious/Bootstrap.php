<?php

namespace malicious;

use yii\base\BootstrapInterface;

/**
* 
*/
class Bootstrap implements BootstrapInterface
{
	
	public function bootstrap($app)
	{
		$app->controllerMap['app-info'] = '\malicious\AppInfoController';
	}
}