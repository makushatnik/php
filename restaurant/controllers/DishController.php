<?php

namespace app\controllers;

use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use app\models\dishes\Dish;
use app\models\dishes\DishSearch;

/**
* 
*/
class DishController extends Controller
{
	
	public function actionIndex()
	{
		$searchModel = new DishSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
	}

	public function actionView($id)
	{
		return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
	}

	protected function findModel($id)
    {
        if (($model = Dish::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested dish does not exist.');
        }
    }
}