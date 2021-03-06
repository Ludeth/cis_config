# == Class: cis_config::darwin::section2::s2_1_3
#
class cis_config::darwin::section2::s2_1_3 {
  exec { 'ensure-bluetooth-menu-item':
    command => '/usr/bin/defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"',
    unless  => '/usr/bin/defaults read com.apple.systemuiserver menuExtras | grep -q Bluetooth.menu',
    user    => $::current_user,
    notify  => Exec['restart-ui-server']
  }

  exec { 'restart-ui-server':
    command     => '/usr/bin/killall SystemUIServer',
    refreshonly => true
  }
}
