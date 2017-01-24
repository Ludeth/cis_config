#
# Darwin Section 1-3
#
class cis_config::darwin::s1_3 {
  exec { 'cis-1.3':
    command => 'defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool TRUE',
    unless  => "defaults read /Library/Preferences/com.apple.commerce AutoUpdate | grep '1'"
    }
}
