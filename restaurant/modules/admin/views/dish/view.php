<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\dishes\DishRecord */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Dishes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dish-record-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'notes:ntext',
            'hidden',
            'img_url'
        ],
    ]) ?>

    <?php if($image): ?>
    <?= Html::img("{$image->getUrl('600x450')}", [
        'alt' => $model->name,
        'style' => 'float: none;',
    ]) ?>
    <?php else: ?>
    <?= Html::img("@web/img/dish/{$model->img_url}", [
        'alt' => $model->name,
        'style' => 'float: none;',
    ]) ?>
    <?php endif; ?>

</div>
