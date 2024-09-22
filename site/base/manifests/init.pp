# @summary Base Class
#
# @example Basic Usage
# include base::limits
class base {
  include sudo
  include base::ntp
  include base::apt
  include base::users
  include base::grub
  include base::shell
  include sysctl::base
  include os_hardening
}
