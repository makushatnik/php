<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\dishes\Dish */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Dishes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dish-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'name',
            'notes:ntext',
        ],
    ]) ?>

</div>
