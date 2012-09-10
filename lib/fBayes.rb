

module FBayesDir
  def self.root
    Gem::Specification.find_by_name("fBayes").gem_dir + "/lib/data/"
  end
end


require_relative './global_classifier'
