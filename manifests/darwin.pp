#
# Class implements the Darwin controls as defined in CIS Level 1
#

class cis_config::darwin {
  include cis_config::darwin::section1
  include cis_config::darwin::section2
}
