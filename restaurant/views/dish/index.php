<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\dishes\DishSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Dishes';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dish-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'name',
            'notes:ntext',
        ],
    ]); ?>
</div>
