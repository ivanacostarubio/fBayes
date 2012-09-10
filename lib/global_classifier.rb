

require_relative './data/cdc/classifier'
require_relative './data/sr24/classifier'


puts "*" * 100

puts "Clasifier Object: @sr24_classifier"
puts "Classifier Object: @cdc_classifier"





class GlobalClassifier

  attr_accessor :classifiers

  def initialize(classifiers)
    @classifiers = classifiers
  end

  def c(w)
    @classifiers.each do |classifier|
      puts "*" * 100
      puts classifier.class
      puts classifier.classify w
      puts classifier.classifications w
      puts "*" * 100
    end
    nil
  end

end


#
# THE BEST CLASSIFIER IS THE SR24
#
puts "@g as a global object classifier"
@g = GlobalClassifier.new([@sr24_classifier, @cdc_classifier])

