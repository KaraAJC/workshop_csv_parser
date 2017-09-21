# step one: read in a CSV file
# step two: parse data recieved from file

# def read_file(filename)
#   table_array = []
#   File.open(filename).each do |line|
#     line.chomp!
#     info_array = line.split(',')
#     table_array.push(info_array)
#   end
#   p table_array
# end

# read_file('dogs.csv')


# step three: account for other delimiters
def read_file(filename)
  content = File.open(filename)
  # evaluate first line, to determine delimiter
  headers = content.readlines[0].chomp!
  # save delimiter as variable, use in split
  header_one_and_two = headers.match(/(\w+)(\W{1}[t]{1}|\W)(\w+)/)
  delimiter = header_one_and_two[2]
  p headers
  p delimiter
end

read_file('dinosaurs.csv')
read_file('dogs.csv')
read_file('cat_breeds.csv')
read_file('contacts.csv')
read_file('cars.csv')
read_file('routes.csv')