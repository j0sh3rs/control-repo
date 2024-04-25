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
      'ntp1.corp.com nomodify notrap nopeer noquery',
      'ntp2.corp.com nomodify notrap nopeer noquery'
    ],
  }
}
