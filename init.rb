# Some methods for the first launch

def firstList
  createListFile(getList)
end
  
def getList
  list = []
  6.times do |i|
    puts "Enter item ##{i}:"
    list[i] = gets
  end
  return list
end

def createListFile(list_array)
  fileList = File.new("list.txt", "w")
  list_array.each do |line|
    fileList.puts(line)
  end
  fileList.close
end
