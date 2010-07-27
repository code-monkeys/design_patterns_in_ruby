# command2.rb

# We use blocks for command implementation.

# 1. class that uses commands-blocks

class CommandUser
  def initialize(&command)
    @command = command
  end

  def operation()
    @command.call if @command != nil
  end
end


# 2. test

command_user = CommandUser.new {
  puts "command1"
}

command_user.operation