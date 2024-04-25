# @summary Base NTP Class
#
# @example Basic Usage
# include base::ntp
class base::ntp {
  class { 'ntp':
    servers  => ['0.us.pool.ntp.org', '1.us.pool.ntp.org'],
    restrict => [
      'default ignore',
      '-6 default ignore',
      '127.0.0.1',
      '-6 ::1',
      '0.us.pool.ntp.org nomodify notrap nopeer noquery',
      '1.us.pool.ntp.org nomodify notrap nopeer noquery'
    ],
  }
}
