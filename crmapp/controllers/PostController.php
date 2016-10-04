<?php

namespace app\controllers;
use yii\data\Pagination;
use yii\web\HttpException;
use app\models\Post;

class PostController extends AppController
{
    public function actionIndex() {
		//$posts = Post::find()->select('id, title, excerpt')->all();
		//$this->debug($posts);
		$query = Post::find()->select('id, title, excerpt');
		$pages = new Pagination([
			'totalCount' => $query->count(),
			'pageSize' => 2,
			'pageSizeParam' => false,
			'forcePageParam' => false
		]);
		$posts = $query->offset($pages->offset)->limit($pages->limit)->all();
		
		return $this->render('index', compact('posts', 'pages'));
	}
	
	public function actionView() {
		$id = \Yii::$app->request->get('id');
		$post = Post::findOne($id);
		if (empty($post)) throw new HttpException(404, 'Not Found.....');
		return $this->render('view', compact('post'));
	}
}
