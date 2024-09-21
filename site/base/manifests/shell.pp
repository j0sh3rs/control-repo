# Class: base::shell
#
#
class base::shell {
  file { '/home/j0sh3rs/.bashrc':
    ensure => 'present',
    source => 'puppet:///modules/base/.bashrc',
    mode   => '0644',
    owner  => 'j0sh3rs',
    group  => 'j0sh3rs'
  }
}
