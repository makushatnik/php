<?php

namespace app\controllers;

use app\models\Product;
use yii\web\NotFoundHttpException;

class ProductController extends BaseController
{
    public function actionView($id)
    {
        $product = $this->findModel($id);
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        $this->setMeta('E-Shopper | '.$product->name, $product->keywords, $product->description);
        return $this->render('view', compact('product', 'hits'));
    }

    

    /**
     * Finds the Product model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Product the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Product::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('Такого товара нет.');
        }
    }
}
