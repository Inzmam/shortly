# Shortly

A simple Ruby gem for generating short URLs using Base62 encoding.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shortly'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install shortly
```

## Usage

Generate short URLs using short.ly domain:

```ruby
require 'shortly'

Shortly.shorten('https://really-long-url.com/with/lots/of/parameters')
# => "http://short.ly/bK92m"

# Invalid URLs will raise an error
Shortly.shorten('not-a-valid-url')
# => raises Shortly::Error, "Invalid URL format"

Shortly.shorten('')
# => raises Shortly::Error, "URL cannot be empty"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Inzmam/shortly.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
