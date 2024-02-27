# Manifest file to install flask
package { 'flask':
  ensure	=> '2.1.0',
}

#exec { 'apt-get update':
#command => 'usr/bin/apt-get update'
#}
