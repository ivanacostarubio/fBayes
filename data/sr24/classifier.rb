require 'classifier'

puts "*" * 100
puts "SR24 CLASSIFIER:"
puts "*" * 100

categories_path = Dir["./data/sr24/data/*"]
@categories = categories_path.map{|path| path.gsub("./data/sr24/data/", "")}

@sr24_classifier = Classifier::Bayes.new 

@categories.each do |c|
  @sr24_classifier.add_category c
end


total_size = 0

@categories.each do |category|
  method = "train_" + category.downcase
  data = File.read("./data/sr24/data/#{category}")
  puts category +": " + data.size.to_s
  @sr24_classifier.send(method, data)
  total_size += data.size.to_i
end


puts "TOTAL SIZE: #{total_size}"