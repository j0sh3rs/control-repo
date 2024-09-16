# Class: base::grub::kernel_mods
#
#
class base::grub::kernel_mods {
  grub_config { 'timeout':
    value => '1'
  }
  kernel_parameter { 'mitigations':
    ensure => present,
    value  => 'off',
  }
  kernel_parameter { 'transparent_hugepages':
    ensure => present,
    value  => 'always',
  }
  kernel_parameter { 'scsi_mod.use_blk_mq':
    ensure => present,
    value  => '1',
  }
}
