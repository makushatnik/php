<?php

namespace app\models\customer;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\customer\CustomerRecord;

/**
 * CustomerRecordSearch represents the model behind the search form about `app\models\customer\CustomerRecord`.
 */
class CustomerRecordSearch extends CustomerRecord
{
    public $country;
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'created_at', 'created_by', 'updated_at', 'updated_by'], 'integer'],
            [['name', 'birth_date', 'notes', 'country'], 'safe'],
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

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = CustomerRecord::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        $dataProvider->sort->attributes['country'] = [
            'asc' => ['address.country' => SORT_ASC],
            'desc' => ['address.country' => SORT_DESC],
        ];
        $dataProvider->sort->attributes['email'] = [
            'asc' => ['email.address' => SORT_ASC],
            'desc' => ['email.address' => SORT_DESC],
        ];

        $query->joinWith('addresses');
        $query->joinWith('emails');

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'customer.id' => $this->id,
            'birth_date' => $this->birth_date,
            'created_at' => $this->created_at,
            'created_by' => $this->created_by,
            'updated_at' => $this->updated_at,
            'updated_by' => $this->updated_by,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'notes', $this->notes]);
        
        if ($this->country) {
            //$query->joinWith('addresses');
            $query->andWhere(['like', 'address.country', $this->country]);
        }

        return $dataProvider;
    }
}
