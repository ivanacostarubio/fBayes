# Read File names under Data to get Category Names
#
#  Initialize Classifier with Category Names
#
#  Train Classifier with Each name


require 'classifier'

puts "*" * 100
puts "CDC CLASSIFIER"
puts "*" * 100

categories_path = Dir["./lib/data/cdc/data/*"]
categories = categories_path.map{|path| path.gsub("./lib/data/cdc/data/", "")}
@cdc_classifier = Classifier::Bayes.new 

categories.each do |c|
  @cdc_classifier.add_category c
end


total_size = 0

categories.each do |category|
  method = "train_" + category.downcase
  data = File.read( "./lib/data/cdc/data/#{category}")


  puts category +": " + data.size.to_s
  total_size += data.size.to_i

  @cdc_classifier.send(method, data)
end

puts "TOTAL SIZE: #{total_size}"


