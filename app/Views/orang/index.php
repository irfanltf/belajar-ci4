<?= $this->extend('layout/template'); ?>


<?= $this->section('content'); ?>

<div class="container">
  <div class="row">
    <div class="col">
      <h1 class="mt-2">Daftar Orang</h1>
    </div>
    <form action="" method="POST">
    <div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="Search..." aria-label="Recipient's username" aria-describedby="button-addon2" name="keyword">
  <button class="btn btn-outline-secondary" type="submit" name="submit">search</button>
</div>
</form>
  </div>
	<div class="row">
		<div class="col">




			<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nama</th>
      <th scope="col">Alamat</th>

    </tr>
  </thead>
  <tbody>
  	<?php $i = 1 + (10 * ($current_page - 1) ); ?>
<?php foreach ($orang as $key): ?>
	
    <tr>
      <th scope="row"><?= $i; ?></th>
      
      <td><?= $key['nama']  ?></td>
      <td><?= $key['alamat']  ?></td>
      
    <?php $i++; ?>
<?php endforeach ?>
  </tbody>
</table>
<?= $pager->links('orang', 'orang_pagination') ?>
		</div>
	</div>
</div>


<?= $this->endSection(); ?>