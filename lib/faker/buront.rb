require 'active_support/all'
require 'yaml'
require 'faker/buront/version'
require 'faker/buront/saying'

module Faker
  module Buront
    def self.random_part_of_saying
      random_whole_saying.body_array.sample
    end

    def self.random_saying_title
      random_whole_saying.title
    end

    def self.random_saying
      random_whole_saying.oneline
    end

    def self.random_whole_saying
      random_title = keys.sample
      whole_saying(random_title)
    end

    def self.part_of_saying(key)
      whole_saying(key).random_body_oneline
    end

    def self.saying_title(key)
      whole_saying(key).title
    end

    def self.saying(key)
      whole_saying(key).oneline
    end

    def self.whole_saying(key)
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
