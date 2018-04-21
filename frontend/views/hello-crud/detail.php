<?php

use yii\widgets\Breadcrumbs;
use yii\helpers\Url;

$this->title = "Hello Crud"

?>

<div class='row'>
	<div class="col-md-12">
		<h1><?php echo $Bus['no_polisi'] ?></h1>
		<hr/>

		<?php

		echo Breadcrumbs::widget(['itemTemplate' => "<li>{link}</li>/n", //template for all links
			'links'=> [
				['label' => 'Bus List', 'url' => ['hello-crud/index']],$Bus['no_polisi'],
			],
		]);

		?>
	</div>
</div>

<div>
	<div class="col-md-2">
		<div class="list grup">
			<a href="<?php echo Url::to(['hello-crud/edit','id'=>$Bus['id_bus']]);?>" class="list-group-item"><i class="glyphicon glyphicon-pencil"></i> Edit Bus</a>

			<a href="<?php echo Url::to(['hello-crud/delete', 'id'=>$Bus['id_bus']]); ?>" class="list-group-item"><i class="glyphicon glyphicon-trash"></i> Delete Bus</a>
		</div>
	</div>
	<!-- <div class="col-md-10">
		<p><b>No Polisi</b>: <?php echo $Bus->pegawai['no_polisi'] ?></p>
		<p><b>No Polisi</b>: <?php echo $Bus->jam_operasional['jabatan'] ?></p>

		
	</div> -->
</div>