# Simple CLI implementation of the Ivy Lee Method
require_relative "init"
require_relative "manip"

# check if lists already exists
firstList unless File.file?("list.txt")

array_list = readList

displayList(array_list)
