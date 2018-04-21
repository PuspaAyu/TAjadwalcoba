<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Jadwalbus */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="jadwalbus-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'tanggal')->textInput() ?>

    <?= $form->field($model, 'jam_berangkat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'id_bus')->textInput() ?>

    <?= $form->field($model, 'id_pegawai')->textInput() ?>

    <?= $form->field($model, 'jam_datang')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'id_izin')->textInput() ?>

    <?= $form->field($model, 'id_jurusan')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
