require 'active_support/all'
require 'yaml'
require 'faker/buront/version'

module Faker
  module Buront
    def self.random_saying_oneline
      random_title = keys.sample
      saying_oneline(random_title)
    end

    def self.random_saying
      random_title = keys.sample
      saying(random_title)
    end

    def self.saying_oneline(title)
      saying_hash[title][:body].split("\n").sample
    end

    def self.saying(title)
      saying_hash[title]
    end

    def self.keys
      saying_hash.keys
    end

    private

    def self.saying_hash
      saying_file = "#{File.dirname(__FILE__)}/../../config/saying.yml"
      YAML.load_file(saying_file).deep_symbolize_keys
    end
  end
end
