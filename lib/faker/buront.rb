require 'active_support/all'
require 'yaml'
require 'faker/buront/version'
require 'faker/buront/saying'

module Faker
  module Buront
    def self.random_saying_body_oneline
      random_saying.body_array.sample
    end

    def self.random_saying
      random_title = keys.sample
      saying(random_title)
    end

    def self.saying_body_oneline(key)
      saying(key).body_array.sample
    end

    def self.saying_title(key)
      saying(key).title
    end

    def self.saying_body(key)
      saying(key).body
    end

    def self.saying(key)
      Faker::Buront::Saying.new(title: saying_hash[key][:title], body: saying_hash[key][:body])
    end

    def self.keys
      saying_hash.keys
    end

    private

    def self.saying_hash
      saying_file = "#{File.dirname(__FILE__)}/../../config/saying.yml"
      @saying_hash ||= YAML.load_file(saying_file).deep_symbolize_keys
    end
  end
end
