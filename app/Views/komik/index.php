<?= $this->extend('layout/template'); ?>


<?= $this->section('content'); ?>

<div class="container">
	<div class="row">
		<div class="col">
<a class="btn btn-primary" href="/komik/create">Tambah Data Komik</a>
<h1 class="mt-2">Daftar Komik</h1>
  <?php if(session()->getFlashdata('pesan')): ?>
  <div class="alert alert-success" role="alert">
  <?= session()->getFlashdata('pesan'); ?>
</div>
<?php endif; ?>

			<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Sampul</th>
      <th scope="col">Judul</th>
      <th scope="col">Akti</th>
    </tr>
  </thead>
  <tbody>
  	<?php $i =1; ?>
<?php foreach ($komik as $key): ?>
	
    <tr>
      <th scope="row"><?= $i; ?></th>
      <td><img src="/img/<?= $key['sampul']  ?>" class="sampul"></td>
      <td><?= $key['judul_komik']  ?></td>
      <td><a href="/komik/<?= $key['slug'] ?>" class="btn btn-warning">Detail</a></td>
    </tr>
    <?php $i++; ?>
<?php endforeach ?>
  </tbody>
</table>
		</div>
	</div>
</div>


<?= $this->endSection(); ?>