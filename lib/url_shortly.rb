# frozen_string_literal: true

require_relative "url_shortly/version"
require_relative "url_shortly/generator"
require "base62"

module UrlShortly
  class Error < StandardError; end

  def self.shorten(url)
    Generator.shorten(url)
  end
end
