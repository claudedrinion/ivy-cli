# some method to read and write the list
# we use an array as a proxy for the manipulation
# at the end we overwrite the list using each element of the array as a line

def readList # read the list file and return an array
  array_list = []
  i = 0
  File.open("list.txt").readlines.each do |line|
    array_list[i] = line
    i += 1
  end
  array_list
end

def displayList(array)
  puts "Your current todo list (INSERT DATE):" #implement date
  array.length.times do |i|
    puts "#{i + 1}) #{array[i]}"
  end
end

def writeList(array_list)
  File.open("list.txt", 'w+') do |file|
    array_list.each { |element| file.puts(element) }
  end
end
