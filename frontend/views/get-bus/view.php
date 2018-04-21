<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\GetBus */

$this->title = $model->id_getBus;
$this->params['breadcrumbs'][] = ['label' => 'Get Buses', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="get-bus-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_getBus], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_getBus], [
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
            'id_getBus',
            'no_polisi',
            'jam_operasional',
        ],
    ]) ?>

</div>
