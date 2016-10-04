<?php

namespace app\controllers;

use Yii;
use app\models\customer\EmailRecord;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * EmailController implements the CRUD actions for EmailRecord model.
 */
class SubmodelController extends Controller
{
    public $recordClass;
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Displays a single EmailRecord model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new EmailRecord model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate($relation_id)
    {
        /** @var ActiveRecord $model */
        $model = new $this->recordClass;
        if ($relation_id) {
            $model->customer_id = $relation_id;
        }
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //return $this->redirect(['view', 'id' => $model->id]);
            return $this->goBack();
        }
        return $this->render('create', compact('model'));
    }

    /**
     * Updates an existing EmailRecord model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id, $relation_id = '')
    {
        $model = $this->findModel($id);
        if ($relation_id) {
            $model->customer_id = $relation_id;
        }
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //return $this->redirect(['view', 'id' => $model->id]);
            return $this->goBack();
        }
        return $this->render('update', compact('model'));
    }

    /**
     * Deletes an existing EmailRecord model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id, $relation_id = '')
    {
        $this->findModel($id)->delete();
        if ($relation_id) {
            $model->customer_id = $relation_id;
        }
        return $this->goBack();
    }

    /**
     * Finds the EmailRecord model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return EmailRecord the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        $model = call_user_func([$this->recordClass, 'findOne'], 'id');
        if (!$model) {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
        return $model;
    }
}
