<?php

use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model app\models\dishes\DishRecord */

$this->title = 'Update Calculation for ' . $dish->name;
$this->params['breadcrumbs'][] = ['label' => 'Calculations', 'url' => ['index']];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="dish-record-update">
	<?php if( Yii::$app->session->hasFlash('success') ): ?>
        <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?php echo Yii::$app->session->getFlash('success'); ?>
        </div>
    <?php endif;?>

    <?php if( Yii::$app->session->hasFlash('error') ): ?>
        <div class="alert alert-danger alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?php echo Yii::$app->session->getFlash('error'); ?>
        </div>
    <?php endif;?>

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

	<?php if(count($linkDishes) > 0): ?>
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Measure</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <?php foreach($linkDishes as $link): ?>
                <tr>
                    <td><?= $link['name']; ?></td>
                    <td><?= $link['quantity'] ?></td>
                    <td><?= $link['measure'] ?></td>
                    <td>
                    	<?= Html::a('<span class="glyphicon glyphicon-trash"></span>',
                    		['delete', 'id' => $dish->id, 'ing_id' => $link['ingredient_id']], [
				            'data' => [
				                'confirm' => 'Are you sure you want to delete this item?',
				                'method' => 'post',
				            ],
				        ]) ?>
                    </td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>
</div>
