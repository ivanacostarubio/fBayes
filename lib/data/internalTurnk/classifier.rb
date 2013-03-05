puts "*" * 100
puts "InternalTurnk CLASSIFIER: SUCKS"
puts "*" * 100



class InternalTurnk
  attr_accessor :classifier

  def initialize
    @classifier = Classifier::Bayes.new 
    @home_dir = FBayesDir.internal_turnk_data
    puts @home_dir.inspect

    add_categories
    train
 end

  def c(word)
    result = sorted_classification(word)
    value_of_classification = result.last
    category_of_classification = result.first

    if value_of_classification <= value_of_missing_info
      return "Unknown"
    else
      return category_of_classification
    end
  end

  def d(word)
    @classifier.classifications(word)
  end

  private

  def value_of_missing_info
    -6.41
  end

  def sorted_classification(word)
    @classifier.classifications(word).sort_by { |_key, value| value }.reverse.first
  end

  def categories_path

  end

  def add_categories
    categories_path =  Dir[ @home_dir + "*"]
    @categories = categories_path.map{|path| path.gsub(@home_dir, "")}

    @categories.each do |c|
      @classifier.add_category c
    end

    puts @categories.inspect
  end

  def train 
    total_size = 0

    @categories.each do |category|
      method = "train_" + category.downcase
      data = File.read( @home_dir + category.to_s)
      puts category +": " + data.size.to_s
      @classifier.send(method, data)
      total_size += data.size.to_i
    end

    puts "TOTAL SIZE: #{total_size}"
  end

end
