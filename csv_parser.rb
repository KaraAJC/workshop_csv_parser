# step one: read in a CSV file

def read_file(filename)
  table_array = []
  File.open(filename).each do |line|
    line.chomp!
    info_array = line.split(',')
    table_array.push(info_array)
  end
  p table_array
end


# step two: parse data recieved from file


read_file('dogs.csv')