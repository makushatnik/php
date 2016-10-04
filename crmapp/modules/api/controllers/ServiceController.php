<?php

namespace app\modules\api\controllers;

use Yii;
use yii\web\Response;
use yii\web\Controller;
use app\models\service\ServiceRecord;

/**
 * ServiceController implements the CRUD actions for ServiceRecord model.
 */
class ServiceController extends Controller
{
	public function actionJson() {
        $models = ServiceRecord::find()->all();
        $data = array_map(function($model) { return $model->attributes; }, $models);

        $response = Yii::$app->response;
        $response->format = Response::FORMAT_JSON;
        $response->data = $data;

        return $response;
    }

    public function actionYaml() {
        $models = ServiceRecord::find()->all();
        $data = array_map(function($model) { return $model->attributes; }, $models);

        $response = Yii::$app->response;
        $response->format = $this::FORMAT_YAML;
        $response->data = $data;

        return $response;
    }

    public function actionIndex() {
    	return 'We on the API Page!!!';
    }
}