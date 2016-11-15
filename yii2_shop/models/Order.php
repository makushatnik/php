<?php

namespace app\models;

use Yii;
use yii\db\ActiveRecord;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "order".
 *
 * @property string $id
 * @property integer $qty
 * @property double $sum
 * @property string $status
 * @property string $user_id
 * @property string $created_at
 * @property string $updated_at
 */
class Order extends ActiveRecord
{
    public function behaviors() {
        return [
            'timestamp' => TimestampBehavior::className()
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id'], 'required'],
            [['qty', 'user_id'], 'integer'],
            [['sum'], 'number'],
            [['status'], 'boolean'],
            [['created_at', 'updated_at'], 'safe'],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            
        ];
    }

    public function getUser()
    {
        return $this->hasOne(User::className(), ['user_id' => 'id']);
    }

    public function getOrderItems()
    {
        return $this->hasMany(OrderItem::className(), ['order_id' => 'id']);
    }
}
