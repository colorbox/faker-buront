require 'active_support/all'
require 'yaml'
require 'faker/buront/version'

module Faker
  module Buront

    def self.saying
      random_title = titles.sample
      saying_hash[random_title]
    end

    def self.saying_hash
      saying_file = "#{File.dirname(__FILE__)}/../../config/saying.yml"
      YAML.load_file(saying_file).deep_symbolize_keys
    end

    def self.titles
      saying_hash.keys
    end
  end
end
