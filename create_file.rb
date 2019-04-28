number = gets.chomp
Dir.mkdir("./ABC/#{number}")
array = %w(A B C D)
array.each do |k|
  file_path = "./ABC/#{number}/#{number}#{k}.rb"
  File.open(file_path, 'w')
end