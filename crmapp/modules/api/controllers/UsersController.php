<?php
namespace app\modules\api\controllers;

use yii\rest\ActiveController;
use yii\filters\RateLimiter;
use yii\filters\auth\HttpBasicAuth;
use yii\filters\auth\QueryParamAuth;
use yii\filters\auth\HttpBearerAuth;
use app\filters\auth\HeaderParamAuth;

/**
* 
*/
class UsersController extends ActiveController
{
	public $modelClass = 'app\models\user\UserRecord';

	public $serializer = [
		'class' => 'yii\rest\Serializer',
		'collectionEnvelope' => 'users'
	];

	public function behaviors() {
		$behaviors = parent::behaviors();
		// $behaviors['authenticator'] = [
		// 	'class' => HttpBasicAuth::className(),
		// 	'auth' => ['app\models\user\UserRecord', 'httpBasicAuth']
		// ];

		// $behaviors['authenticator'] = [
		// 	'class' => HttpBearerAuth::className(),//OAuth
		// ];

		// $behaviors['authenticator'] = [
		// 	'class' => HeaderParamAuth::className(),//Custom
		// ];

		$behaviors['authenticator'] = [
			'class' => QueryParamAuth::className(),
			'tokenParam' => 'token'
		];
		$behavior['rateLimiter'] = [
			'class' => RateLimiter::className(),
			'enableRateLimitHeaders' => true
		];

		return $behaviors;
	}

	public function httpBasicAuth($username, $password) {
		$model = static::findOne(['username' => $username]);
		if ($model == null) return null;

		if (password_verify($password, $model->password)) return $model;
		return null;
	}

	public function actionError()
	{
		$exception = Yii::$app->errorHandler->exception;
		if ($exception !== null) return ['exception' => $exception];
		return false;
	}
}