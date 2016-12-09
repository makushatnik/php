<?php

namespace app\models\dishes;

use Yii;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "dishes".
 *
 * @property integer $id
 * @property string $name
 * @property string $notes
 * @property integer $hidden
 * @property string $img_url
 *
 * @property DishesIngredients[] $dishesIngredients
 */
class Dish extends ActiveRecord
{
    public $imageFile;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'dishes';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['notes'], 'string'],
            [['hidden'], 'integer'],
            [['name', 'img_url'], 'string', 'max' => 255],
            [['imageFile'], 'file', 'extensions' => 'png, jpg'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'notes' => 'Notes',
            'hidden' => 'Hidden',
            'img_url' => 'Img Url',
        ];
    }

    public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDishesIngredients()
    {
        return $this->hasMany(DishesIngredients::className(), ['dish_id' => 'id']);
    }

    public function upload()
    {
        if ($this->validate()) {
            $path = 'img/dish/' . $this->imageFile->baseName . '.' . $this->imageFile->extension;
            $this->imageFile->saveAs($path);
            $this->attachImage($path, true);
            @unlink($path);
            return true;
        } else {
            return false;
        }
    }
}
