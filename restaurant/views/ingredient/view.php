<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\dishes\Ingredient */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Ingredients', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ingredient-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'name',
            'notes:ntext',
        ],
    ]) ?>

</div>
