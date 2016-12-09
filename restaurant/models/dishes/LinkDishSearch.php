<?php

namespace app\models\dishes;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;

/**
 * IngredientSearch represents the model behind the search form about `app\models\dishes\Ingredient`.
 */
class LinkDishSearch extends LinkDish
{
	public $param1;
	public $param2;
	public $param3;
	public $param4;
	public $param5;

	/**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['param1','param2','param3','param4','param5'], 'integer'],
        ];
    }

	/**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    public function searchMain($params, $max, $ids)
    {
    	$query = LinkDish::find()
    		->select('dishes_ingredients.*, i.name, i.id, i.hidden')
        	->joinWith('ingredient i')
        	->where(['in', 'dish_id', $ids]);

        $arr = [];
        $this->load($params);

        if (!$this->validate()) {
        	return $arr;
        }

        $cnt = count($params);
        if ($cnt < 2) {
        	if (Yii::$app->request->isPost) {
        		Yii::$app->session->setFlash('error', 'Выберите больше ингредиентов.');
        	}
        	return $arr;
        }

        if ($cnt > 5) {
        	Yii::$app->session->setFlash('error', 'Слишком много ингредиентов.');
        	return $arr;
        }

        $arr = $this->search($query, $params, $max);
        $res_cnt = count($arr);
        if ($res_cnt > 0) {
        	return $arr;
        }

        $iter = $max;
        while ($iter > 1) {
        	$arr = array_merge($arr, $this->search($query, $params, $iter-1));
        }

        return $arr;
    }
    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    private function search($query, $params, $iter)
    {
        $arr = [];
        $query1 = $query->andFilterWhere([
	        'i.id' => $params['param1'],
	    ]);
        for ($i = 2; $i <= $iter; $i++) {
	        $query1->orWhere([
	            'i.id' => $params['param'.$i],
	        ]);
	    }

	    $arr = $query1->all();
		return $arr;
    }
}