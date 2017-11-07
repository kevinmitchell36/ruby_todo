# Menu
module Menu
  def menu
    puts 'Welcome to your todo list!'
    puts 'Please select an option:'
    puts '1) Add'
    puts '2) Show'
    puts '3) Quit'
  end

  def show
    menu
  end
end

# Prompts user
module Promptable
  def prompt(message = 'What would you like to do?', symbol = ':>')
    print message
    print symbol
    gets.chomp
  end
end

# List
class List
  attr_reader :all_tasks

  def initialize
    @all_tasks = []
  end

  def add(task)
    all_tasks << task
  end

  def show
    all_tasks
  end
end

# Task
class Task
  attr_reader :description

  def initialize(description)
    @description = description
  end
end

if __FILE__ == $PROGRAM_NAME
  include Menu
  include Promptable
  my_list = List.new
  puts 'Please choose from the following list'
  until ['q'].include?(user_input = prompt(show).downcase)
    case user_input
    when '1'
      my_list.add(prompt('What is the task you want to accomplish?'))
    when '2'
      puts my_list.show
    else
      puts 'I did not understand that'
    end
  end
  puts 'Thank you for using the todo list'
end












