# frozen_string_literal: true

require_relative "shortly/version"
require_relative "shortly/generator"
require "base62"

module Shortly
  class Error < StandardError; end

  def self.shorten(url)
    Generator.shorten(url)
  end
end
