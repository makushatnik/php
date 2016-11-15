<?php
namespace app\controllers;

use app\models\Product;
use app\models\Cart;
use app\models\Order;
use app\models\OrderItem;
use yii\web\NotFoundHttpException;
use Yii;

/**
* 
*/
class OrderController extends BaseController
{
	
	public function actionView($id)
	{
		//$id = Yii::$app->request->get('id');
		$session = Yii::$app->session;
		$session->open();
		$this->setMeta('Заказ');
		
		if (!$id) {
			$user = Yii::$app->user;
			$order = new Order();
			$order->qty = $session['cart.qty'];
			$order->sum = $session['cart.sum'];
			$order->user_id = $user->id;
			
			if ($order->save()) {
				$this->saveOrderItems($session['cart'], $order->id);
				Yii::$app->session->setFlash('success', 'Ваш заказ принят. Менеджер вскоре свяжется с вами.');
				
				Yii::$app->mailer->compose('order', compact('session'))
					->setFrom(['test@mail.ru' => 'E-Shopper'])
					->setTo($user->email)
					->setSubject('Заказ с сайта E-Shopper')
					->send();
				
				$session->remove('cart');
				$session->remove('cart.qty');
				$session->remove('cart.sum');
				
				return $this->redirect('order', ['id' => $order->id]);
			} else {
				Yii::$app->session->setFlash('error', 'Ошибка оформления заказа.');
			}
		} else {
			$order = $this->findOrder($id);
		}
		return $this->render('order/view', compact('session', 'order'));
	}

	protected function saveOrderItems($items, $order_id)
	{
		foreach ($items as $id => $item) {
			$orderItem = new OrderItem();
			$orderItem->order_id = $order->id;
			$orderItem->product_id = $id;
			$orderItem->name = $item['name'];
			$orderItem->price = $item['price'];
			$orderItem->qty_item = $item['qty'];
			$orderItem->sum_item = $item['qty'] * $item['price']; 

			$orderItem->save();
		}
	}

	/**
     * Finds the Category model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Category the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findOrder($id)
    {
        if (($model = Order::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('Заказ не найден.');
        }
    }
}