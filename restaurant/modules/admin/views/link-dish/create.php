<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\dishes\DishRecord */

$this->title = 'Create Calculation';
$this->params['breadcrumbs'][0] = ['label' => 'Admin Zone', 'url' => ['admin']];
$this->params['breadcrumbs'][] = ['label' => 'Calculations', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="linkdish-record-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>