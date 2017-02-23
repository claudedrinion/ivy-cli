# Simple CLI implementation of the Ivy Lee Method
require_relative "init"
require_relative "manip"
require_relative "rw"

command = ARGV.shift

# check if lists already exists
firstList unless File.file?("list.txt")

array_list = readList

case command
when nil
displayList(array_list)
when "change", "c"
    task = ARGV.shift
    #implement test to see if task can be converted to int
    change(task, array_list)
when "done", "finish"
    puts "TODO2"
else
    STDERR.puts "'#{command}': invalid parameter.\n"
    command = "help"
end


