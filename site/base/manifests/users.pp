# @summary Base User Class
#
# @example Basic Usage
# include base::users
class base::users {
  user { 'j0sh3rs':
    ensure         => present,
    purge_ssh_keys => true,
  }


  ssh_authorized_key { 'j0sh3rs':
    ensure => present,
    user   => 'j0sh3rs',
    type   => 'ecdsa-sha2-nistp521',
    key    => 'AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBADRC5VDmRxrGEf1WplDaIRX9NlAxCSArK4UEN6B+99HtZiylpqPm9QNOUxcrActzsi84oLzVzIwkNi7BhrPSSmJogDWK4YqUqS8ZItx06g1OU1sHnByTpSJkdb2csHU0CMTMUttWaOp4Gs87EvBvcJPMeOyy1TB/ktw4K6lXtV+OJbn7g==',
  }
}
