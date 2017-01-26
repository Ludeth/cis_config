#
# ntp_drift.rb
#
Facter.add('ntp_drift') do
  confine kernel: 'Darwin'
  setcode do
    Facter::Util::Resolution.exec('cat /etc/db/ntp.drift')
  end
end
