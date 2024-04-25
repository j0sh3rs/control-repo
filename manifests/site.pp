node default {
  notify { 'Triggered manifests/site.pp and role::base': }
  include role::base
}
