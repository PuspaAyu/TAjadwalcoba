<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\Select2;
use frontend\models\Jabatan;

/* @var $this yii\web\View */
/* @var $model frontend\models\Pegawai */
/* @var $form yii\widgets\ActiveForm */
?>


<div class="pegawai-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'no_induk')->textInput() ?>

    <?= $form->field($model, 'alamat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'no_tlp')->textInput() ?>

    <!-- <?= $form->field($model, 'jabatan')->textInput() ?> -->

    <?= $form->field($model, 'jabatan')->widget(Select2::className(),[
            'data' => \yii\helpers\ArrayHelper::map(Jabatan::find()->all(),'jenis_jabatan','jenis_jabatan'),
            'options' => ['placeholder' => 'Pilih Jenis Jabatan...'],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ]) ?>

    <?= $form->field($model, 'riwayat_pendidikan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'riwayat_pekerjaan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tgl_masuk')->textInput() ?>

    <?= $form->field($model, 'jenis_kelamin')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'agama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'kota')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ktp_habis')->textInput() ?>

    <?= $form->field($model, 'sim_habis')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
