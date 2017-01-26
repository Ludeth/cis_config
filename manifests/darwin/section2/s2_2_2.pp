# == Class: cis_config::darwin::section2::s2_2_2
#
class cis_config::darwin::section2::s2_2_2 {
  file_line { 'ntp_loopback_interface_lo':
    path => '/etc/ntp-restrict.conf',
    line => 'restrict lo'
  }
  file_line { 'ntp_loopback_interface_wildcard':
    path => '/etc/ntp-restrict.conf',
    line => 'interface ignore wildcard'
  }
}
