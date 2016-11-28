<?php

namespace app\modules\admin\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "category".
 *
 * @property string $id
 * @property string $parent_id
 * @property string $name
 * @property string $keywords
 * @property string $description
 */
class Category extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['parent_id'], 'integer'],
            [['name'], 'required'],
            [['name'], 'string', 'max' => 50],
            [['keywords'], 'string', 'max' => 100],
            [['description'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '№ категории',
            'parent_id' => 'Родитель',
            'name' => 'Название',
            'keywords' => 'Ключевые слова',
            'description' => 'Мета-описание',
        ];
    }

    public function getCategory() {
        return $this->hasOne(Category::className(), ['id' => 'parent_id']);
    }
}
