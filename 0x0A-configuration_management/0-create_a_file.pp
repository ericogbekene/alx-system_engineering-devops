#puppet script to create a file
file { '/tmp/school':
	path => "/tmp/school",
	ensure => "present",
	content => "I love Puppet",
	owner => www-data,
	group => www-data,
	mode => '0774'
}
