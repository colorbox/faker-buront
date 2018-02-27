require 'active_support/all'
require 'yaml'
require 'faker/buront/version'

module Faker
  module Buront
    def self.saying_oneline
      random_saying[:body].split("\n").sample
    end

    def self.random_saying
      random_title = titles.sample
      saying(random_title)
    end

    def self.saying(title)
      saying_hash[title]
    end

    def self.titles
      saying_hash.keys
    end

    private

    def self.saying_hash
      saying_file = "#{File.dirname(__FILE__)}/../../config/saying.yml"
      YAML.load_file(saying_file).deep_symbolize_keys
    end
  end
end
