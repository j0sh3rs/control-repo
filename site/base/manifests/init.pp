# @summary Base Class
#
# @example Basic Usage
# include base::limits
class base {
  include sudo
  include base::ntp
  include base::apt
  include limits
  include sysctl::base
  include os_hardening
  class {'::puppet_agent':
    package_version => 'latest',
    is_pe           => false,
    collection      => 'puppet8',
    config          => [{section => main, setting => runinterval, value => '1h'}]
  }

}
