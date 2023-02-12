number = gets.chomp
Dir.mkdir("./#{number}")
array = %w(A B C D E F)
array.each do |k|
  file_path = "./#{number}/#{number}#{k}.rb"
  File.open(file_path, 'w')
end