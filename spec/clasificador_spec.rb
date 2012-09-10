#
#


@@dataset = {
  "cucumber" => "veggie",
  "picana" => "protein"
}

class Clasificador

  attr_accessor :dataset

  def initialize(dataset)
    @dataset = dataset
  end

  def category(ingredient)
    @@dataset[ingredient]
  end
end

describe Clasificador do

  let(:clasificador){ Clasificador.new(@@dataset) } 

  it "clasifies cucumber as a veggi" do
    clasificador.category("cucumber").should == 'veggie'
  end

  it "classifies picana as a protein" do
    clasificador.category("picana").should == "protein"
  end

  it "does not know when there is something wweir" do
    clasificador.category("wasa").should == "n/a"
  end
end


