# frozen_string_literal: true

module Shortly
  class Generator
    BASE_URL = "http://short.ly/"

    def self.shorten(url)
      raise Error, "URL cannot be empty" if url.to_s.empty?
      raise Error, "Invalid URL format" if !valid_url?(url)
      
      id = Base62.encode(url.hash.abs)
      "#{BASE_URL}#{id}"
    end

    def self.valid_url?(url)
      uri = URI.parse(url)
      uri.is_a?(URI::HTTP) || uri.is_a?(URI::HTTPS)
    rescue URI::InvalidURIError
      false
    end
  end
end
