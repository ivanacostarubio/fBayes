@@true_table = {
  "mushroom" => "vegetables-and-vegetable-products",
  "soup" => "soups",
  "potato" => "vegetables-and-vegetable-products",
  "picana" => "beef-products",
  "beer" => "beverages",
  "bread" => "baked-products",
  "lentils" => "vegetables-and-vegetable-products",
  "hamburgers" => "fast-foods",
  "French fries" => "fast-foods",
  "bacio" => "beef-products",
  "coffee" => "beverages",
  "sirloin" => "beef-products",
  "tacos" => "beef-products",
  "red wine" => "beverages",
  "protein shake" => "special",
  "salad" => "vegetables-and-vegetables-products",
  "bacon" => "beef-products",
  "ground beef" => "beef-products",
  "onions" => "vegetables-and-vegetable-products",
  "spinach" => "vegetable-and-vegetable-products",
  "with" => "remove",
  "and" => "remove",
  "chorizo" => "beef-products",
  "romain" => "vegetable-and-vegetable-products",
  "lettuce" => "vegetable-and-vegetable-products",
  "carrot" => "vegetable-and-vegetable-products",
  "juice" => "beverages",
  "french" => "fast-foods",
  "toast" => "baked-products",
  "orange" => "fruits-and-fruit-juices",
  "cafe" => "beverages",
  "one" => "remove",
  "tea" => "beverages",
  "spoon" => "remove",
  "of" => "remove",
  "sugar" => "sweets",
  "Protein" => "special",
  "Shake" => "beverages",
  "Coffee" => "beverages",
  "water" => "beverages",
  "Parisienne" => "meals",
  "meet" => "beef-products",
  "basmati" => "cereal-grains-and-pasta",
  "rice" => "cereal-grains-and-pasta",
  "al" => "remove",
  "pastor" => "beef-products",
  "michelada" => "beverages",
  "sol" => "beverages",
  "cerveza" => "beverages",
  "Minerva" => "beverages",
  "omelet" => "dairy-and-egg-products",
  "strawberry" => "fruits-and-fruit-products",
  "jell" => "special",
  "pizza" => "cereal-grains-and-pasta",
  "corn" => "vegetables-and-vegetables-products",
  "lentil" => "cereal-grains-and-pasta",
  "tiramisu" => "sweets"
} 



@@internal_turnk = {
  "mushroom" => "Vegetables",
  "soup" => "Unknown",
  "potato" => "Vegetables",
  "picana" => "Meat",
  "beer" => "Beverages",
  "bread" => "grains",
  "lentils" => "Vegetables",
  "hamburgers" => "meat",
  "French fries" => "Fast-Foods",
  "bacio" => "meat",
  "coffee" => "Beverages",
  "sirloin" => "Meat",
  "tacos" => "Meat",
  "red wine" => "beverages",
  "protein shake" => "Unknown",
  "salad" => "vegetables",
  "bacon" => "Meat",
  "ground Meat" => "Meat",
  "onions" => "vegetables",
  "spinach" => "vegetables",
  "with" => "Unknown",
  "and" => "Unknown",
  "chorizo" => "Meat",
  "romain" => "vegetables",
  "lettuce" => "vegetables",
  "carrot" => "vegetables",
  "juice" => "beverages",
  "french" => "fast-foods",
  "toast" => "Grains",
  "orange" => "fruits",
  "cafe" => "beverages",
  "one" => "Unknown",
  "tea" => "beverages",
  "spoon" => "Unknown",
  "of" => "Unknown",
  "sugar" => "Fat",
  "Protein" => "Unknown",
  "Shake" => "beverages",
  "Coffee" => "beverages",
  "water" => "beverages",
  "Parisienne" => "meat",
  "meet" => "meat",
  "basmati" => "grains",
  "rice" => "grains",
  "al" => "Unknown",
  "pastor" => "Meat",
  "michelada" => "beverages",
  "sol" => "beverages",
  "cerveza" => "beverages",
  "Minerva" => "beverages",
  "omelet" => "dairy",
  "strawberry" => "fruits",
  "jell" => "Unknown",
  "pizza" => "fast-foods",
  "corn" => "vegetables",
  "lentil" => "grains",
  "tiramisu" => "Unknown"
} 




require_relative './../lib/fBayes'

describe  "Acurracy" do

  before(:all) do
    @usda = InternalTurnk.new
  end

  @@internal_turnk.each_pair do |word, category|
    it "maches the word #{word} with the category #{category}" do 
      @usda.c(word).downcase.should == category.downcase
    end
  end

end

