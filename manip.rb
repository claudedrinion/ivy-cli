# some method to manipulate the list
# we use an array as a proxy for the manipulation

# todo: implement multiple arguments
def change(task, array_list)
  task = task.to_i
  if task < 1 || task > 6
    return STDERR.puts "ivy: cannot change task #{task}: No such task"
  end
  puts "Enter new task #{task}):"
  array_list[task.to_i - 1] = gets
  displayList(array_list)
  array_list
end
