<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\time\TimePicker;

/* @var $this yii\web\View */
/* @var $model frontend\models\Bus */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="bus-form">

    <?php $form = ActiveForm::begin(); ?>

    

    <?= $form->field($model, 'no_polisi')->textInput(['maxlength' => true]) ?>

    <!-- <?= $form->field($model, 'jam_operasional')->textInput(['maxlength' => true]) ?> -->
    <?php echo TimePicker::widget([
	    	'model' => $model,
			'attribute' => 'jam_operasional',
			'name' => 't1',
			'pluginOptions' => [
		        'showSeconds' => true,
		        'showMeridian' => false,
		        'minuteStep' => 1,
		        'secondStep' => 5,
	   		]
		]);
	?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
