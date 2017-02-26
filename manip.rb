# some method to manipulate the list
# we use an array as a proxy for the manipulation

# todo: implement multiple arguments
def change(task, array_list)
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

