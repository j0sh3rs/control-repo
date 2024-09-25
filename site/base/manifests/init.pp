# @summary Base Class
#
# @example Basic Usage
# include base::limits
class base {
  include base::apt
  include base::grub
  include base::ntp
  include base::rust
  include base::shell
  include base::users
  include os_hardening
  include sudo
  include sysctl::base
}
