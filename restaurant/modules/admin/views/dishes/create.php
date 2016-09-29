<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\dishes\DishRecord */

$this->title = 'Create Dish Record';
$this->params['breadcrumbs'][] = ['label' => 'Dish Records', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dish-record-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
