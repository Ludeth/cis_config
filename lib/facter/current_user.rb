Facter.add(‘current_user’)
  do setcode
    do Facter::Core::Execution.exec(‘who am i’)
    end
  end
