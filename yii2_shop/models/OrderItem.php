<?php

namespace app\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "order_items".
 *
 * @property string $id
 * @property string $order_id
 * @property string $product_id
 * @property string $name
 * @property double $price
 * @property integer $qty_item
 * @property double $sum_item
 */
class OrderItem extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'order_items';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'price', 'qty_item'], 'required'],
            [['order_id', 'product_id', 'qty_item'], 'integer'],
            [['price', 'sum_item'], 'number'],
            [['name'], 'string', 'max' => 50],
            [['order_id'], 'exist', 'skipOnError' => true, 'targetClass' => Order::className(), 'targetAttribute' => ['order_id' => 'id']],
        ];
    }

    public function getOrder()
    {
        return $this->hasOne(Order::className(), ['id' => 'order_id']);
    }
}
