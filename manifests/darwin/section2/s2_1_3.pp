# == Class: cis_config::darwin::section2::s2_1_3
#
class cis_config::darwin::section2::s2_1_3 {
  exec { 'ensure-bluetooth-menu-item':
    command => '/usr/bin/defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"',
    unless  => 'defaults read com.apple.systemuiserver menuExtras | grep Bluetooth.menu',
    user    => $::current_user
  }
}
