# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fBayes"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ivan Acosta-Rubio"]
  s.date = "2012-09-10"
  s.description = "Naitve Bayes for Food Category classification"
  s.email = "ivan@bakedweb.net"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".DS_Store",
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "brainstorms.txt",
    "data/.DS_Store",
    "data/MyFoodapediaData/Food_Display_Table.xml",
    "data/MyFoodapediaData/Foods_Needing_Condiments_Table.xml",
    "data/MyFoodapediaData/lu_Condiment_Food_Table.xml",
    "data/cdc/.DS_Store",
    "data/cdc/classifier.rb",
    "data/cdc/data.html",
    "data/cdc/data/beverages",
    "data/cdc/data/dairy",
    "data/cdc/data/fruits_and_vegetables",
    "data/cdc/data/grains",
    "data/cdc/data/mixed_dishes",
    "data/cdc/data/other_foods",
    "data/cdc/data/protein_foods",
    "data/cdc/data/water",
    "data/cdc/ruby_parser.rb",
    "data/sr24/.DS_Store",
    "data/sr24/FD_GROUP.csv",
    "data/sr24/FD_GROUP.txt",
    "data/sr24/FOOD_DES.csv",
    "data/sr24/FOOD_DES.txt",
    "data/sr24/classifier.rb",
    "data/sr24/convert_to_csv.rb",
    "data/sr24/csv_to_muchidata.rb",
    "data/sr24/data/.DS_Store",
    "data/sr24/data/baby-foods",
    "data/sr24/data/baked-products",
    "data/sr24/data/beef-products",
    "data/sr24/data/beverages",
    "data/sr24/data/breakfast-cereals",
    "data/sr24/data/cereal-grains-and-pasta",
    "data/sr24/data/dairy-and-egg-products",
    "data/sr24/data/ethnic-foods",
    "data/sr24/data/fast-foods",
    "data/sr24/data/fats-and-oils",
    "data/sr24/data/finfish-and-shellfish-products",
    "data/sr24/data/fruits-and-fruit-juices",
    "data/sr24/data/lamb",
    "data/sr24/data/legumes-and-legume-products",
    "data/sr24/data/meals",
    "data/sr24/data/nut-and-seed-products",
    "data/sr24/data/pork-products",
    "data/sr24/data/poultry-products",
    "data/sr24/data/restaurant-foods",
    "data/sr24/data/sausages-and-luncheon-meats",
    "data/sr24/data/snacks",
    "data/sr24/data/soups",
    "data/sr24/data/spices-and-herbs",
    "data/sr24/data/sweets",
    "data/sr24/data/vegetables-and-vegetable-products",
    "data/sr24/rawData/DATA_SRC.txt",
    "data/sr24/rawData/DATSRCLN.txt",
    "data/sr24/rawData/DERIV_CD.txt",
    "data/sr24/rawData/Dats_Src.pdf",
    "data/sr24/rawData/FD_GROUP.txt",
    "data/sr24/rawData/FOOD_DES.txt",
    "data/sr24/rawData/FOOTNOTE.txt",
    "data/sr24/rawData/LANGDESC.txt",
    "data/sr24/rawData/LANGUAL.txt",
    "data/sr24/rawData/NUTR_DEF.txt",
    "data/sr24/rawData/NUT_DATA.txt",
    "data/sr24/rawData/SRC_CD.txt",
    "data/sr24/rawData/WEIGHT.txt",
    "data/sr24/rawData/sr24_doc.pdf",
    "fBayes.gemspec",
    "global_classifier.rb",
    "lib/fBayes.rb",
    "spec/clasificador_spec.rb",
    "spec/fBayes_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/ivanacostarubio/fBayes"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Naive Bayes for Food Category classification"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.2.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.2.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.2.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
  end
end

