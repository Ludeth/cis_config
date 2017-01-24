#
# Darwin Section 1-3
#
class cis_config::darwin::section1::s1_5 {
  exec { 'auto-update-restart-required':
    command => '/usr/bin/defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool TRUE',
    unless  => "/usr/bin/defaults read /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired | grep '1'"
    }
}
