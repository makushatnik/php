<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\bootstrap\ActiveForm;

$this->title = 'The Profile Details: '.$user->username;
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-login">
    <h1><?= Html::encode($this->title) ?></h1>

	<?= DetailView::widget([
		'model' => $user,
		'attributes' => [
			'username',
			'email',
		]
	]) ?>
</div>