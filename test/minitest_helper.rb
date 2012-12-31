require "simplecov"
require "coveralls"

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  add_filter "test"
  command_name "MiniTest"
end

require "minitest/autorun"
require "minitest/pride"

# Note: `Forem` must respond to `.formatter=` before the tests are run for
# SimpleCov to register the coverage. This avoids the need to bring along
# Forem and Rails with this library.
module Forem
  def self.formatter=(formatter)
  end
end

require File.expand_path("../../lib/forem-kramdown", __FILE__)
