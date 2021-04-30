<?php

namespace App\Controllers;

class Pages extends BaseController
{
	public function index()
	{



		$data = [
			'title' => 'Home'
		];
		
		return view('pages/home', $data);
		

	}

	public function about(){

		$data = [
			'title' => 'About'
		];
		
		return view('pages/about', $data);
	}

	public function contact(){

		$data = [
			'title' => 'Contact',
			'alamat' => [
			[
				'tipe' => 'rumah',
				'alamat' => 'jl. apa aja',
				'kota' => 'lampung'
			],
			[
				'tipe' => 'kantor',
				'alamat' => 'jl. apa ini',
				'kota' => 'semarang'
			]
		]
		];
		
		return view('pages/contact', $data);
	}

	
}
