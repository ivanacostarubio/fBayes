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
    @classifier.classify(word)
  end

  def d(word)
    @classifier.classifications(word)
  end

  private

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
