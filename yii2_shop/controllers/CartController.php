<?php
namespace app\controllers;

use app\models\Product;
use app\models\Cart;
use Yii;

/**
* 
*/
class CartController extends BaseController
{
	public $layout = false;

	public function actionAdd()
	{
		$id = Yii::$app->request->get('id');
		$product = Product::findOne($id);
		if (empty($product)) return 'false';
		
		$qty = (int)Yii::$app->request->get('qty');
		$qty = !$qty ? 1 : $qty;
		$session = Yii::$app->session;
		$session->open();
		$cart = new Cart();
		$cart->addToCart($product, $qty);
		
		// if (!Yii::$app->request->isAjax) {
		// 	return $this->redirect(Yii::$app->request->referrer);
		// }
		
		return $this->render('cart-modal', compact('session'));
	}

	public function actionShow()
	{
		$session = Yii::$app->session;
		$session->open();
		return $this->render('cart-modal', compact('session'));
	}

	public function actionClear()
	{
		$session = Yii::$app->session;
		$session->open();
		$session->remove('cart');
		$session->remove('cart.qty');
		$session->remove('cart.sum');
		
		return $this->render('cart-modal', compact('session'));
	}

	public function actionDelItem()
	{
		$id = Yii::$app->request->get('id');
		
		$session = Yii::$app->session;
		$session->open();
		$cart = new Cart();
		$cart->recalc($id);

		return $this->render('cart-modal', compact('session'));
	}
}