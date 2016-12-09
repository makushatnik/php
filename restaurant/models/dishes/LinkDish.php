<?php

namespace app\models\dishes;

use Yii;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "dishes_ingredients".
 *
 * @property integer $id
 * @property integer $dish_id
 * @property integer $ingredient_id
 * @property integer $quantity
 *
 * @property Dishes $dish
 * @property Ingredients $ingredient
 */
class LinkDish extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'dishes_ingredients';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['dish_id', 'ingredient_id'], 'required'],
            [['dish_id', 'ingredient_id', 'quantity'], 'integer'],
            [['dish_id'], 'exist', 'skipOnError' => true, 'targetClass' => Dish::className(), 'targetAttribute' => ['dish_id' => 'id']],
            [['ingredient_id'], 'exist', 'skipOnError' => true, 'targetClass' => Ingredient::className(), 'targetAttribute' => ['ingredient_id' => 'id']],
            ['measure', 'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            //'id' => 'ID',
            'dish_id' => 'Dish ID',
            'ingredient_id' => 'Ingredient ID',
            'quantity' => 'Quantity',
            'measure' => 'Measure'
        ];
    }

    public static function primaryKey()
    {
        return ['dish_id', 'ingredient_id'];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDish()
    {
        return $this->hasOne(Dish::className(), ['id' => 'dish_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIngredient()
    {
        return $this->hasOne(Ingredient::className(), ['id' => 'ingredient_id']);
    }
}
