<?php

namespace app\modules\admin\controllers;

use Yii;
use yii\db\Query;
use app\models\dishes\Dish;
use app\models\dishes\LinkDish;
use app\models\dishes\Ingredient;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * IngredientController implements the CRUD actions for Ingredient model.
 */
class LinkDishController extends Controller
{
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
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['admin'],
                    ],
                ],
            ],
        ];
    }

    /**
     * Lists all Ingredient models.
     * @return mixed
     */
    public function actionIndex()
    {
        $query = (new Query());
        //$dishes = Dish::find(['hidden' => 0]);
        $tmp = $query
        	->select('*')
        	->from('dishes')
        	->where('hidden = 0')->all();
        //debug($ids);
        $ids = [];
        foreach ($tmp as $dish) {
        	array_push($ids, $dish['id']);
        }
        //debug($ids);
        $query = (new Query());
        $linkDishes = $query
        	->select('i.name, i.hidden, d.quantity, d.measure, d.dish_id')
        	->from(['d' => 'dishes_ingredients', 'i' => 'ingredients'])
        	->where(['in', 'dish_id', $ids])
        	->andWhere('i.id = d.ingredient_id')->all();
        $dishes = [];
        //debug($tmp);
        foreach ($tmp as $dish) {
            $hidden = 0;
            $haveItems = 0;
            //debug($dish['id']);
            foreach ($linkDishes as $row) {
                //echo 'Question - '.($dish['id'] == $row['dish_id']).'<br>';
                if ($dish['id'] == $row['dish_id']) {
                    $haveItems = 1;
                    if ($row['hidden'] == 1) {
                        echo 'We Are Here<br>';
                        $hidden = 1;
                        break;
                    }
                }
            }
            if ($hidden == 0 && $haveItems) {
                array_push($dishes, $dish);
            }
        }
        //debug($linkDishes);

        return $this->render('index', compact('dishes','linkDishes'));
    }

    public function actionView($id)
    {
    	$model = $this->findModel($id);
    	$query = (new Query());
    	$linkDishes = $query
        	->select('i.name, d.quantity, d.measure')
        	->from(['d' => 'dishes_ingredients', 'i' => 'ingredients'])
        	->where(['dish_id' => $id])
        	->andWhere('i.id = d.ingredient_id')->all();
        return $this->render('view', compact('model', 'linkDishes'));
    }

    public function actionCreate()
    {
    	$model = new LinkDish();
    	$dish = new Dish();
    	if ($model->load(Yii::$app->request->post())) {
    		//If record is already exist, not to be added
    		$finded = LinkDish::findOne([
    			'ingredient_id' => $model->ingredient_id,
    			'dish_id' => $model->dish_id
    		]);
    		if ($finded !== null) {
    			$finded->quantity += $model->quantity;
    			$model = $finded;
    		}
    		if ($model->save()) {
    			return $this->redirect(['index']);
    		}
    	} else {
    		return $this->render('create', compact('model'));
    	}
    }

    public function actionUpdate($id)
    {
    	//$model = $this->findLinkDish($id);
    	$model = new LinkDish();
    	$dish = $this->findModel($id);
    	
    	if ($model->load(Yii::$app->request->post())) {
    		//If record is already exist, not to be added
    		$finded = LinkDish::findOne([
    			'ingredient_id' => $model->ingredient_id,
    			'dish_id' => $model->dish_id
    		]);
    		if ($finded !== null) {
    			$finded->quantity += $model->quantity;
    			$model = $finded;
    		}
    		if ($model->save()) {
    			Yii::$app->session->setFlash('success', 'Калькуляция обновлена.');
    		} else {
    			Yii::$app->session->setFlash('error', 'Ошибка обновления калькуляции.');
    		}
    	}
    	$query = (new Query());
        $linkDishes = $query
                ->select('i.name, d.quantity, d.measure, d.dish_id, d.ingredient_id')
                ->from(['d' => 'dishes_ingredients', 'i' => 'ingredients'])
                ->where(['dish_id' => $id])
                ->andWhere('i.id = d.ingredient_id')->all();
        //debug($linkDishes);
    	return $this->render('update', compact('model', 'dish', 'linkDishes'));
    }

    public function actionDelete($id, $ing_id)
    {
    	$link = LinkDish::findOne(['dish_id' => $id, 'ingredient_id' => $ing_id]);
    	if ($link !== null) {
    		$link->delete();
    	}

        //return $this->redirect(['index']);
        return $this->refresh();
    }

    public function actionDeleteAll($id)
    {
    	// $links = LinkDish::find(['dish_id' => $id]);
    	// if ($links !== null) {
    	// 	$links->delete();
    	// }
    	LinkDish::deleteAll(['dish_id' => $id]);
    	//$this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the LinkDish model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Dish the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Dish::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested dish does not exist.');
        }
    }

    protected function findLinkDish($id)
    {
        if (($model = LinkDish::findOne(['dish_id' => $id])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested dish does not exist.');
        }
    }
}