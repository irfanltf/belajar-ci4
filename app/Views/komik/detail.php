<?= $this->extend('layout/template') ?>


<?= $this->section('content'); ?>


<div class="container">
	<div class="row">
		<div class="col">
			<h2 class="mt-2"></h2>
			<div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img width="150px" src="/img/<?= $komik['sampul']  ?>" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><?= $komik['judul_komik'] ?></h5>
        <p class="card-text">Penulis : <b><?= $komik['penulis'] ?></b></p>
        <p class="card-text"><small class="text-muted">Penerbit : <?= $komik['penerbit'] ?></small></p>

        <a href="/komik/edit/<?= $komik['slug']; ?>" class="btn btn-info">Edit</a>

        <form action="/komik/<?= $komik['id'] ?>" method="post" class="d-inline">
          <?= csrf_field(); ?>
          <input type="hidden" name="_method" value="DELETE">
          <button type="submit" class="btn btn-danger" onclick="return confirm('Apakah anda yakin?')">Delete</button>
        </form>

       
        <br><br>
        <a href="/komik" class="btn btn-dark">Kembali ke daftar komik</a>
      </div>
    </div>
  </div>
</div>
		</div>
	</div>
</div>



<?= $this->endSection(); ?>