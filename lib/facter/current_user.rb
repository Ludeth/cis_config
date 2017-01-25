# lib/facter/currentuser.rb
Facter.add(‘current_user’)do
  setcode do
    Facter::Util::Resolution.exec("whoami")
  end
end
