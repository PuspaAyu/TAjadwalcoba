<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\GetJadwal */

$this->title = 'Update Get Jadwal: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Get Jadwals', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_getJadwal, 'url' => ['view', 'id' => $model->id_getJadwal]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="get-jadwal-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
