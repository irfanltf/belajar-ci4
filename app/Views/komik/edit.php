<?= $this->extend('layout/template'); ?>



<?= $this->section('content'); ?>

<div class="container">
	<div class="row">
		<div class="col">
			<h2>Form Edit Data Komik</h2>
			
			<form action="/komik/update/<?= $komik['id']; ?>" method="post" enctype="multipart/form-data">
				<?= csrf_field(); ?>
				<input type="hidden" name="slug" value="<?= $komik['slug']; ?>">
				<input type="hidden" name="old-file" value="<?= $komik['sampul']; ?>">

  <div class="row mb-3">
    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
    <div class="col-sm-10">
      <input type="text" class="form-control <?= ($validation->hasError('judul_komik')) ? 'is-invalid' : '' ?>" id="judul" name="judul_komik" autofocus="" value="<?= (old('judul_komik')) ? old('judul_komik') : $komik['judul_komik'] ?>">
     <div id="validationServer05Feedback" class="invalid-feedback">
      <?= $validation->getError('judul_komik'); ?>
    </div>
    </div>
  </div>
  <div class="row mb-3">
    <label for="penulis" class="col-sm-2 col-form-label">Penulis</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="penulis" name="penulis"  value="<?= (old('penulis')) ? old('penulis') : $komik['penulis'] ?>">
    </div>
  </div>

  <div class="row mb-3">
    <label for="penulis" class="col-sm-2 col-form-label">Penerbit</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="penerbit" name="penerbit"  value="<?= (old('penerbit')) ? old('penerbit') : $komik['penerbit'] ?>">
    </div>
  </div>
<div class="row mb-3">
    <label for="penulis" class="col-sm-2 col-form-label">Sampul</label>
        <div class="col-sm-2">
      <img src="/img/<?= $komik['sampul'] ?>" class="img-thumbnail img-preview">
    </div>
    <div class="col-sm-8">
      <div class="input-group mb-3">
      <input type="file" class="form-control <?= ($validation->hasError('sampul')) ? 'is-invalid' : '' ?>" id="sampul" name="sampul" onchange="previewImg()">
      <label class="input-group-text" for="sampul">Upload</label>
           <div id="validationServer05Feedback" class="invalid-feedback">
      <?= $validation->getError('sampul'); ?>
    </div>
    </div>
    </div>
  </div>

  
  <button type="submit" class="btn btn-primary">Update Data</button>
</form>
		</div>
	</div>
</div>

<?= $this->endSection(); ?>