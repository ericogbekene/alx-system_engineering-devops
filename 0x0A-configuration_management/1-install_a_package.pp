# Manifest file to install flask

exec { 'flask':
  ensure  => '2.1.0',
  command => 'pip3 install flask',
  path    => '/usr/local/bin:/usr/bin:/bin'

}
