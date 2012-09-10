

module FBayesDir
  def self.root
    Gem::Specification.find_by_name("fBayes").gem_dir + "/lib/data/"
  end

  def self.cdc_data
    self.root + "/cdc/data/"
  end

  def self.sr24_data

    self.root + "/sr24/data/"
  end
end


require_relative './global_classifier'
