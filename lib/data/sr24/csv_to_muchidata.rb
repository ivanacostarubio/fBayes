


# READ Categories file
# READ Food description file
# - Replace Categorories into file
# - Save files named after categories with the food description
# 
# - Create Classifier
# - Add Categories
# - Train it

require 'csv'

class Categories

  def initialize
    @hash= Hash.new
    build_hash
  end

  def build_hash
    CSV.read("./FD_GROUP.csv").each do |line|
      rows = line.first.split("^")
      @hash[rows[0]] = rows[1]
    end
  end

  def names
    @hash.values.map{|c| c.downcase.gsub(" ", "_") }
  end

  def code_numbers
    @hash.keys
  end

  def name_from_code(code)
    @hash[code].downcase.gsub(" ", "-")
  end

end

class Food
  def initialize
    @hash = Hash.new
    build_hash
  end


  def hash
    @hash
  end

  def build_hash
    CSV.read("FOOD_DES.csv").each do |line|
      rows = line
      puts rows.inspect

      number = rows.first.split("^").first
      category = rows[0].split("^")[1]

      name = rows.first.split("^").last

      begin 
        if rows.size >= 2
          todo = rows[1] + rows[2] + rows[3]
          name = name + todo
        end
      rescue TypeError
      end

      name = name.gsub(/\d/,' ').gsub("^", ' ').gsub(".", '')




      @hash[number] = [name, category]
    end
  end

  def names
    @hash.values.map{ |f| f[0] }
  end

  def number
    @hash.keys
  end

  def category
    @hash.values.map{|f| f[1] }
  end
end

categories = Categories.new
food = Food.new

food.hash.each do | data |
  `echo "#{data[1][0]}" >>  ./data/#{categories.name_from_code(data[1][1])}`
end



`rm ./data/baby-food`




# CLEAN FILE FROM NUMBERS AND WEIR CHARACTERS
