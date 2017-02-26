#!/usr/bin/ruby
# Simple CLI implementation of the Ivy Lee Method
require_relative "init"
require_relative "manip"
require_relative "rw"

command = ARGV.shift

# check if lists already exists
firstList unless File.file?("list.txt")

array_list = readList

# next commands to implement: finish all, new list, change all
case command
when nil
  displayList(array_list)
when "change", "c"
  if ARGV[0].nil?
    task= "no_user_input" 
  else
    task = ARGV.shift
  end
  #TODO: find a way to delete clear STDIN...
  # there is a bug when a there are extra arguments
  # UPDATE: resolved with $stdin.gets instead of gets in the method?
  array_list = change(task, array_list)
  writeList(array_list)
when "done", "finish"
  task = ARGV.shift
  array_list = done(task, array_list)
  writeList(array_list)
when "swap", "s"
  # TODO: if user do not enter tasks, ask them
  task1 = ARGV.shift
  task2 = ARGV.shift
  array_list = swap(task1, task2, array_list)
  writeList(array_list)
else
  STDERR.puts "'#{command}': invalid parameter."
  STDERR.puts "Try ivy --help"
end

