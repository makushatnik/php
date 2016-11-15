<?php

namespace app\controllers;

use Yii;
/**
* 
*/
class PostController extends BaseController
{
	
	public $layout = 'basic';

	public function beforeAction($action)
	{
		if ($action->id == 'index') {
			$this->enableCsrfValidation = false;
		}
		return parent::beforeAction($action);
	}

	public function actionIndex()
	{
		if (Yii::$app->request->isAjax) {
			debug($_GET);
			return 'test';
		}
		return 'Post/Index';
	}

	public function actionShow()
	{
		$this->view->title = 'Одна Статья';
		$this->view->registerMetaTag(['name' => 'keywords', 'content' => 'ключевики...']);
		$this->view->registerMetaTag(['name' => 'description', 'content' => 'описание страницы...']);
		return 'Post/Show';
	}
}