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

class Task
  attr_reader :description

  def initialize(description)
    @description = description
  end
end


if __FILE__ == $PROGRAM_NAME
  my_list = List.new
  puts 'You created a new list!'
  my_tasks = my_list.add(Task.new('Do the dishes'))
  p my_list.show
end

