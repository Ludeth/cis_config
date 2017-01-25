#
#
class cis_config::darwin::section2::s2_1_1 {
  exec { 'bluetooth-device-check':
    command => '/usr/bin/defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0',
    unless  => [
                  '/usr/sbin/system_profiler SPBluetoothDataType | grep "Connected: Yes"',
                  '/usr/bin/defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState | grep -q "0"'
                ],
    notify  => Exec['bluetooth-disable-if-none']
  }
  exec { 'bluetooth-disable-if-none':
    command     => '/usr/bin/killall -HUP blued',
    unless      => "/usr/sbin/system_profiler SPBluetoothDataType | grep -q 'Connected: Yes'",
    refreshonly => true
  }
}
