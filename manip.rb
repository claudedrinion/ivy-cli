# some method to manipulate the list
# we use an array as a proxy for the manipulation

# todo: implement multiple arguments
def change(task, array_list)
  # Is it better to be silent or should we explicitly ask for input?
  if task == "no_user_input"
    puts "Which task do you want to change?"
    task = $stdin.gets.chomp
  end

  if task.to_i < 1 || task.to_i > 6
    STDERR.puts "ivy: cannot change task '#{task}': No such task"
  else
    puts "Enter new task #{task}):"
    array_list[task.to_i - 1] = $stdin.gets
    displayList(array_list)
  end
  array_list
end

def done(task, array_list)
  if task.to_i < 1 || task.to_i > 6
    STDERR.puts "ivy: cannot finish task '#{task}': No such task"
  else
    array_list[task.to_i - 1] = "DONE" #TODO: add date!
    displayList(array_list)
  end
  array_list
end

def swap(task1, task2, array_list)
  if task1.to_i < 1 || task1.to_i > 6 || task2.to_i < 1 || task2.to_i > 6
    STDERR.puts "ivy: cannot swap tasks '#{task1}' and '#{task2}':
    No such task(s)"
  else
    tmp = array_list[task1.to_i - 1]
    array_list[task1.to_i - 1] = array_list[task2.to_i - 1]
    array_list[task2.to_i - 1] = tmp
    displayList(array_list)
  end
end
