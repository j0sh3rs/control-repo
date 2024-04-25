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
}
