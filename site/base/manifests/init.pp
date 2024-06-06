# @summary Base Class
#
# @example Basic Usage
# include base::limits
class base {
  include sudo
  include base::ntp
  include base::apt
  include sysctl::base
  # include inifile
  include os_hardening
  # class {'puppet_agent':
  #   package_version => 'latest',
  #   is_pe           => false,
  #   collection      => 'puppet8'
  # }
}
