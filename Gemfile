source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in faker-buront.gemspec
gemspec

# CI sets MINITEST_VERSION to the major version to test against (e.g. "5" or "6").
minitest_version = ENV["MINITEST_VERSION"]
gem "minitest", "~> #{minitest_version}.0" if minitest_version
