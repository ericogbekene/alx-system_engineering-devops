# Manifest file to install flask

package { 'flask':
  ensure	=> 'installed',
  require	=> Exec['apt-get update']
}
