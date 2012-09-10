

module FBayesDir
  def self.root
    File.expand_path '../..', __FILE__
  end

  def self.cdc_data
    root + "/lib/data/cdc/data/"
  end
end


require_relative './global_classifier'
