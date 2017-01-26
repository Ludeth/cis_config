# == Class: cis_config::darwin::section2::s2_2_1
#
class cis_config::darwin::section2::s2_2_1 {
  exec { 'set_ntp_server':
    command => '/usr/sbin/systemsetup -setnetworktimeserver time.apple.com',
    unless  => '/usr/sbin/systemsetup -getusingnetworktime | grep -q "Network Time: On"',
    notify  => Exec['set_network_time']
  }
  exec { 'set_network_time':
    command     => '/usr/sbin/systemsetup –setusingnetworktime on',
    unless      => '/usr/sbin/systemsetup -getusingnetworktime | grep -q "Network Time: On"',
    refreshonly => true
  }
}
