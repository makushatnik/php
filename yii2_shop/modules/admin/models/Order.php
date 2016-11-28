<?php

namespace app\modules\admin\models;

use Yii;
use app\models\User;
use yii\db\ActiveRecord;

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
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'order';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['qty', 'sum', 'user_id', 'created_at', 'updated_at'], 'required'],
            [['qty', 'user_id'], 'integer'],
            [['sum'], 'number'],
            [['status'], 'string'],
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
            'id' => '№ заказа',
            'qty' => 'Кол-во',
            'sum' => 'Сумма',
            'status' => 'Статус',
            'user_id' => 'User ID',
            'created_at' => 'Дата создания',
            'updated_at' => 'Дата изменения',
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
