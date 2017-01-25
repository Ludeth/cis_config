#
#
class cis_config::darwin::section2::s2_1_1 {
  exec { 'bluetooth-device-check':
    command => '/usr/bin/defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0',
    unless  => '/usr/bin/defaults read /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0'
  }
  exec { 'bluetooth-disable-if-none':
    command   => '/usr/bin/killall -HUP blued',
    subscribe => 'bluetooth-device-check',
    unless    => "/usr/sbin/system_profiler SPBluetoothDataType | grep -q 'Connected: Yes'"
  }
}
