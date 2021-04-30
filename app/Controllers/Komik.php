<?php

namespace App\Controllers;
use App\Models\KomikModel;

class Komik extends BaseController
{
	protected $komikmodel;

	public function __construct(){

		$this->komikmodel = new KomikModel();

	}
	public function index()
	{
		$data = [
			'title' => 'Daftar komik',
		'komik' => $this->komikmodel->getKomik()
		];
		
		if (empty($data['komik'])) {
			throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . 'tidak ditemukan.');
			
		}

		return view('komik/index', $data);
		

	}

	public function detail($slug){
		

		$data = [
		'title' => 'Detail Komik',
		'komik' => $this->komikmodel->getKomik($slug)
		];

		return view('komik/detail', $data);
		
	}

	public function create(){
		
		$data = [
			'title' => 'Form Tambah Data Komik',
			'validation' => \Config\Services::validation()
		];

		return view('komik/create', $data);
	}

	public function save(){


		//Validasi

		if (!$this->validate([
			'judul_komik' => [
				'rules'=> 'required|is_unique[komik.judul_komik]',
				'errors' => [
					'required' => 'judul komik harus diisi',
					'is_unique' => 'judul komik sudah ada'
				]
			],
			'sampul' => [
				'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
				'errors' => [
					'max_size' => 'gambar terlalu besar',
					'is_image' => 'bukan gambar!',
					'mine_in' => 'bukan gambar yang benar'
				]
			]
		])) {
			// $validation = \Config\Services::validation();
			return redirect()->to('/komik/create')->withInput();
		}


		//ambil gambar
		$file = $this->request->getFile('sampul');
		
		//ada gambar yang diupload ngga?
		if ($file->getError() == 4) {
			$namafile = 'default.png';
		}else{

			//generate nama sampul random
			$namafile = $file->getRandomName();

			//pindahkan file
			$file->move('img', $namafile);
		}



		$slug = url_title($this->request->getVar('judul_komik'), '-', true);

		$this->komikmodel->save([
			'judul_komik' => $this->request->getVar('judul_komik'),
			'slug' => $slug,
			'penulis' => $this->request->getVar('penulis'),
			'penerbit' => $this->request->getVar('penerbit'),
			'sampul' => $namafile

		]);

		session()->setFlashdata('pesan', 'Data berhasil ditambahkan.');
		return redirect()->to('/komik');
	}

	

	public function delete($id){


		$komik = $this->komikmodel->find($id);

		//hapus file

		if ($komik['sampul'] != 'default.png') {
			unlink('img/'.$komik['sampul']);
		}

		


		$this->komikmodel->delete($id);
		session()->setFlashdata('pesan', 'Data berhasil dihapus.');
		return  redirect()->to('/komik');
	}

	public function edit($slug){
		$data = [
			'title' => 'Form Ubah Data Komik',
			'validation' => \Config\Services::validation(),
			'komik' => $this->komikmodel->getKomik($slug)
		];

		return view('komik/edit', $data);
	}

	public function update($id){

		$komiklama = $this->komikmodel->getKomik($this->request->getVar('slug'));

		if ($komiklama['judul_komik'] == $this->request->getVar('judul_komik')) {
				$rule_judul = 'required';
		}else{
			$rule_judul = 'required|is_unique[komik.judul_komik]';
		}

		if (!$this->validate([
			'judul_komik' => [
				'rules'=> $rule_judul,
				'errors' => [
					'required' => 'judul komik harus diisi',
					'is_unique' => 'judul komik sudah ada'
				]
			],
			'sampul' => [
				'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
				'errors' => [
					'max_size' => 'gambar terlalu besar',
					'is_image' => 'bukan gambar!',
					'mine_in' => 'bukan gambar yang benar'
				]
			]
		])) {
			return redirect()->to('/komik/edit/'.$this->request->getVar('slug'))->withInput();
		}


		$filesampul = $this->request->getFile('sampul');

		//cek gambar baru atau lama
		if ($filesampul->getError() == 4) {
			$namasampul = $this->request->getVar('old-file');
		}else{
			//generate nama file randome
			$namasampul = $filesampul->getRandomName();
			//upload gambar
			$filesampul->move('img', $namasampul);

			//hapus file lama
			unlink('img/'. $this->request->getVar('old-file'));
		}


		$slug = url_title($this->request->getVar('judul_komik'), '-', true);

		$this->komikmodel->save([
			'id' => $id,
			'judul_komik' => $this->request->getVar('judul_komik'),
			'slug' => $slug,
			'penulis' => $this->request->getVar('penulis'),
			'penerbit' => $this->request->getVar('penerbit'),
			'sampul' => $namasampul

		]);

		session()->setFlashdata('pesan', 'Data berhasil diubah.');
		return redirect()->to('/komik');
;	}
	
}
