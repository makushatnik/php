<?php
namespace app\modules\api\controllers;

use Yii;
use yii\rest\Controller;

/**
* 
*/
class DefaultController extends Controller
{
	
	public function actionIndex()
	{
		return ['foo' => 'bar'];
	}
}