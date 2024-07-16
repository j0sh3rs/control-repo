# @summary Base User Class
#
# @example Basic Usage
# include base::users
class base::users {
  user { 'j0sh3rs':
    ensure         => present,
    purge_ssh_keys => true,
  }


  ssh_authorized_key { 'personal-lappy':
    ensure => present,
    user   => 'j0sh3rs',
    type   => 'ecdsa-sha2-nistp521',
    key    => 'AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBADRC5VDmRxrGEf1WplDaIRX9NlAxCSArK4UEN6B+99HtZiylpqPm9QNOUxcrActzsi84oLzVzIwkNi7BhrPSSmJogDWK4YqUqS8ZItx06g1OU1sHnByTpSJkdb2csHU0CMTMUttWaOp4Gs87EvBvcJPMeOyy1TB/ktw4K6lXtV+OJbn7g==',
  }

  ssh_authorized_key { 'work-lappy':
    ensure => present,
    user   => 'j0sh3rs',
    type   => 'ecdsa-sha2-nistp521',
    key    => 'AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBABlbFzDFFfdUPekjXtAhlASJ5ZBf6HTmKWuxR3e/w/ztinZZuTbg4CQUAjvOK2WUWKOGOS0bcyKV8eaamFz7laQhQG7uoR+Xn/4U9arfOeI42TW74929rSBTfcQMC7WNr4NnhagpLt3F8gtu6x/9+QibL58A2xen23HHjAzr4KR5SQkjw==',
  }

  ssh_authorized_key { 'bee03':
    ensure => present,
    user   => 'j0sh3rs',
    type   => 'ecdsa-sha2-nistp521',
    key    => 'AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBACX2CBi9Sth2/1lpePSF6cEk6Z0INT1rb9yNul+pTvCvV0fYfH9ncaTzY/yTgk2UxB1vnGA+fvhfHio4DYXrTyewAEPuBU6fJqLB/ScK+2I1mO0lcIdX9xUTpGpFAIUwLaQdW/ET0N9EcbRCp6X1uM/NsYKdc23m96RL04cHTu2tdErYA==',
  }
}
