<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\dishes\DishRecord */

$this->title = 'Update Dish Record: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Dish Records', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="dish-record-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
