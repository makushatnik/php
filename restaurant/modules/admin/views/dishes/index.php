<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\dishes\DishSearchModel */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Dish Records';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dish-record-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Dish Record', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            [
                'label' => 'Image',
                //'class' => app\utils\ImageColumn::className(),
                'value' => function($model) {
                    $img = $model->getAttributes(['img_url']);
                    return $img !== '' ? '<img src='.$img.' />' : '';
                },

            ],
            'name',
            'notes:ntext',
            'id',

            [
                'class' => 'yii\grid\ActionColumn',
                'header' => Html::a(
                    '<i class="glyphicon glyphicon-plus"></i>&nbsp;Add New',
                    ['/admin/dishes/create'])
            ],
        ],
    ]); ?>
</div>
