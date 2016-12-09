<?php

namespace app\controllers;

use Yii;
use yii\db\Query;
use yii\web\Controller;
use app\models\dishes\LinkDish;
use app\models\dishes\LinkDishSearch;

/**
* 
*/
class LinkDishController extends Controller
{

	public function actionIndex()
	{
		$query = (new Query());
        $tmp = $query
        	->select('*')
        	->from('dishes')
        	->where('hidden = 0')
        	->all();
        $ids = array_map(function($x) {
        	return $x['id'];
        }, $tmp);

		$searchModel = new LinkDishSearch();
		$params = Yii::$app->request->bodyParams['LinkDishSearch'];
		$params = array_filter($params, function($x) {
			return $x > 0;
		});
        $arr = $searchModel->searchMain($params, count($params), $ids);
        
        $linkDishes = [];
        if (count($arr) == 0) {
        	$dishes = 'Ничего не найдено!';
        } else {
        	$dishes = [];
	        foreach ($tmp as $dish) {
	            $hidden = 0;
	            $haveItems = 0;
	            foreach ($arr as $row) {
	                if ($dish['id'] == $row['dish_id']) {
	                    $haveItems += 1;
	                    if ($row['ingredient']['hidden'] == 1) {
	                        $hidden = 1;
	                        break;
	                    }
	                }
	            }
	            if ($hidden == 0 && $haveItems >= 2) {
	                array_push($dishes, $dish);
	            }
	        }
	        
	        if (count($dishes) == 0) {
	        	$dishes = 'Ничего не найдено!';
	        } else {
		        $ids = array_map(function($x) {
		        	return $x['id'];
		        }, $dishes);

		        $query = (new Query());
		        $linkDishes = $query
		        	->select('i.name, i.hidden, d.quantity, d.measure, d.dish_id')
		        	->from(['d' => 'dishes_ingredients', 'i' => 'ingredients'])
		        	->where(['in', 'dish_id', $ids])
		        	->andWhere('i.id = d.ingredient_id')
		        	->all();
	        }
        }
        
        return $this->render('index', compact('dishes','linkDishes','searchModel'));
	}

}