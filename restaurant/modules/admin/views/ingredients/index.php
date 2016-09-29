<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\dishes\IngredientSearchModel */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Ingredient Records';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ingredient-record-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Ingredient Record', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            
            'name',
            'notes:ntext',
            'hidden',
            'id',

            [
                'class' => 'yii\grid\ActionColumn',
                'header' => Html::a(
                    '<i class="glyphicon glyphicon-plus"></i>&nbsp;Add New',
                    ['/admin/ingredients/create'])
            ],
        ],
    ]); ?>
</div>
