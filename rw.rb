# some method to read and write the list
# we use an array as a proxy for the manipulation
# at the end we overwrite the list using each element of the array as a line

def readList # read the list file and return an array
  list_array = []
  i = 0
  File.open("list.txt").readlines.each do |line|
    list_array[i] = line
    i += 1
  end
  return list_array
end

def displayList(array)
  puts "Your current todo list:"
  array.length.times do |i|
    puts "#{i + 1}) #{array[i]}"
  end
end
