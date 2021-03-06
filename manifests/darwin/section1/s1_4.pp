#
# Darwin Section 1.4
#
class cis_config::darwin::section1::s1_4 {
  exec { 'config-data-install':
    command => '/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool TRUE',
    unless  => "/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall | grep -q '1'"
    }

  exec { 'critical-update-install':
    command => '/usr/bin/defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool TRUE',
    unless  => "/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall | grep -q '1'"
    }
}
