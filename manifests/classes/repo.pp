class default-repo {




	yumrepo {
		'vvuksan':
			baseurl => "http://vuksan.com/centos/RPMS/",
			gpgcheck => 0, enabled => 1;


   "epel":
               descr => "Epel-5",
               baseurl => "http://mirror.eurid.eu/epel/5/i386/",
               enabled => 1,
               gpgcheck => 0;

		'inuits':
			baseurl => $operatingsystemrelease ? {
				'6.0' => 'http://repo.inuits.be/centos/6/os',
				default => 'http://repo.inuits.be/centos/5/os',
			},
				descr => $operatingsystemrelease ? {
					'6.0' => 'inuits CentOS 6.x repo',
					default  => 'inuits CentOS 5.x repo',
				},
				gpgcheck => 0,
				enabled => 1;


	}
}

