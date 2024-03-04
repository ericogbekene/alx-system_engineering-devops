# kill a running process

exec { 'p kill':
  command => 'pkill -f killmenow',
  path    => ['/usr/local/bin', '/usr/bin', '/bin']
}
