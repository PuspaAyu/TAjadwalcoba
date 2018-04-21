<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\GetJadwal */

$this->title = 'Create Get Jadwal';
$this->params['breadcrumbs'][] = ['label' => 'Get Jadwals', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="get-jadwal-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
