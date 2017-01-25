#
# Darwin Section 1-3
#
class cis_config::darwin::section1::s1_3 {
  exec { 'cis-1.3':
    command => '/usr/bin/defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool TRUE',
    unless  => "/usr/bin/defaults read /Library/Preferences/com.apple.commerce AutoUpdate | grep -q '1'"
    }
}
