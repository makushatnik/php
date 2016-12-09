<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\dishes\IngredientRecord */

$this->title = 'Create Ingredient';
$this->params['breadcrumbs'][] = ['label' => 'Ingredients', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ingredient-record-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
