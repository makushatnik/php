<?php

namespace app\controllers;

use Yii;
use app\models\Category;
use app\models\Product;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\Pagination;

/**
 * CategoryController implements the CRUD actions for Category model.
 */
class CategoryController extends BaseController
{
    /**
     * Lists all Category models.
     * @return mixed
     */
    public function actionIndex()
    {
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        $this->setMeta('Home | E-Shopper');
        return $this->render('index', compact('hits'));
    }

    /**
     * Displays a single Category model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $category = $this->findModel($id);

        $query = Product::find()->where(['category_id' => $id]);
        $pages = new Pagination([
                'totalCount' => $query->count(),
                'pageSize' => 3,
                'forcePageParam' => false,
                'pageSizeParam' => false
        ]);

        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        $this->setMeta('E-Shopper | '.$category->name, $category->keywords, $category->description);
        return $this->render('view', compact('products', 'category', 'pages'));
    }

    public function actionSearch()
    {
        $q = htmlspecialchars(trim(Yii::$app->request->get('q')));
        $this->setMeta('E-Shopper | Поиск: '.$q);
        if (!$q) return $this->render('search');

        $query = Product::find()->where(['like', 'name', $q]);
        $pages = new Pagination([
                'totalCount' => $query->count(),
                'pageSize' => 3,
                'forcePageParam' => false,
                'pageSizeParam' => false
        ]);

        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        return $this->render('search', compact('products', 'pages', 'q'));
    }
    
    /**
     * Finds the Category model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Category the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Category::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('Такой категории нет.');
        }
    }
}
