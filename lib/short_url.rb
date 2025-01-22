# frozen_string_literal: true

require_relative "short_url/version"
require_relative "short_url/generator"
require "base62"

module ShortUrl
  class Error < StandardError; end

  def self.shorten(url)
    Generator.shorten(url)
  end
end
