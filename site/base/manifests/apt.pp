# @summary Base Apt Class
#
# @example Basic Usage
# include base::apt
class base::apt {
  include apt

  class { 'unattended_upgrades':
    age                    => { 'max' => 5 },
    auto                   => { 'clean' => 'always', 'remove' => true, 'fix_interrupted_dpkg' => true },
    update                 => 'always',
    upgrade                => 'always',
    remove_unused_kernel   => true,
    remove_new_unused_deps => true,
    package_ensure         => latest,
    allow_phased_packages  => true,
  }
}
