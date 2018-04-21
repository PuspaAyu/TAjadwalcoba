<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\GetBus */

$this->title = 'Update Get Bus: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Get Buses', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_getBus, 'url' => ['view', 'id' => $model->id_getBus]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="get-bus-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
