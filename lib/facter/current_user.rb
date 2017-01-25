# lib/facter/currentuser.rb
Facter.add('current_user')do
  setcode do
    Facter::Core::Execution.exec('whoami')
  end
end
