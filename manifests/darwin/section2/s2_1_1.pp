#
#
class cis_config::darwin::section2::s2_1_1 {
  exec { 'bluetooth-device-check':
    command => '/usr/bin/defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0',
    unless  => "/usr/sbin/system_profiler SPBluetoothDataType | grep 'Connected: Yes'"
  }
}
