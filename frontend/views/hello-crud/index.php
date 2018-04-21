<?php

use yii\helpers\Html;
use yii\widgets\Breadcrumbs;
use yii\helpers\Url;

$this->title = "Hello crud";

?>

<div class="row">
	<div class="col-md-12">
		<h1>Bus list</h1>
		<hr/>

		<?php
		echo Breadcrumbs::widget([
			'itemTemplate' => "<li>{link}</li>\n",
			'links' => [
				'Bus List',
			]
		]);

		?>
	</div>
</div>

<div>   
    <div class="col-md-2">
        <div class="list-group">
          <a href="<?php echo Url::to(['hello-crud/add']); ?>" class="list-group-item"><i class="glyphicon glyphicon-plus"></i> Add Team</a>
          <a href="<?php echo Url::to(['hello-crud/delete-all']); ?>" class="list-group-item"><i class="glyphicon glyphicon-trash"></i> Delete All</a>
        </div>
    </div>
    <div class="col-md-10">
        <table class="table table-striped">
            <thead>
              <tr>
                <th>No Polisi</th>
                <th>Jam Operasional</th>
                <!-- <th>Country</th> -->
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
                <?php if (count($bus) > 0) { ?>
                    <?php foreach ($bus as $bus): ?>
                        <tr>
                            <td><?= Html::encode("{$bus['no_polisi']}") ?></td>
                            <td><?= Html::encode("{$bus['jam_operasional']}") ?></td>
                        
                            <td style="width:15%;text-align:center;">
                                <a class="btn btn-success btn-sm" href="<?php echo Url::to(['hello-crud/detail', 'id'=>$bus['id_bus']]); ?>"><i class="glyphicon glyphicon-eye-open"></i></a> 
                            </td>
                          </tr>
                    <?php endforeach; ?>
                <?php } else { ?>
                <tr>
                    <td style="text-align:center;font-size:15px;padding:25px;" colspan="5">No data found...</td>
                </tr>
                <?php } ?>

            </tbody>
          </table>
    </div>
</div>