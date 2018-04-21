<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\GetBus */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="get-bus-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'no_polisi')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jam_operasional')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
