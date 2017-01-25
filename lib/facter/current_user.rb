# lib/facter/currentuser.rb
Facter.add(‘current_user’)do
  setcode do
    'who am i'
  end
end
