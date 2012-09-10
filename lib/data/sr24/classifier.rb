require 'classifier'

puts "*" * 100
puts "SR24 CLASSIFIER:"
puts "*" * 100

categories_path =  Dir[ FBayesDir.root + "/data/*"]

@categories = categories_path.map{|path| path.gsub(FBayesDir.root + "/data/", "")}

@sr24_classifier = Classifier::Bayes.new 

@categories.each do |c|
  @sr24_classifier.add_category c
end


total_size = 0

@categories.each do |category|
  method = "train_" + category.downcase
  data = File.read( FBayesDir.root + "data/#{category}")
  puts category +": " + data.size.to_s
  @sr24_classifier.send(method, data)
  total_size += data.size.to_i
end


puts "TOTAL SIZE: #{total_size}"
