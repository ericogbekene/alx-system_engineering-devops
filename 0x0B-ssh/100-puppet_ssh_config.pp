# configuring ssh config file using puppet

file_resource { 'no password':
  ensure => 'present',
  path   => 'etc/ssh/ssh_config',
  line   => '	PasswordAuthentication no'
}

file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
