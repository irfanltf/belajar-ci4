
<?= $this->extend('layout/template') ?>

<?= $this->section('content'); ?>
<div class="container">
	<div class="row">
		<div class="col">
			 <h1>Contact</h1>

    <?php foreach ($alamat as $key) : ?>
        <ul>
            <li><?= $key['tipe']; ?></li>
            <li><?= $key['alamat']; ?></li>
            <li><?= $key['kota']; ?></li>
        </ul>
    <?php endforeach; ?>
		</div>
	</div>
</div>

 <?= $this->endSection(); ?>


   

 