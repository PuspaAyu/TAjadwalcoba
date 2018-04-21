<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\GetBus */

$this->title = 'Create Get Bus';
$this->params['breadcrumbs'][] = ['label' => 'Get Buses', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="get-bus-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
