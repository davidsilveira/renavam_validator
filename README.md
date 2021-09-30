# RenavamValidator
[![Maintainability](https://api.codeclimate.com/v1/badges/0d0715cd821a59d882d7/maintainability)](https://codeclimate.com/github/davidsilveira/renavam_validator/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/0d0715cd821a59d882d7/test_coverage)](https://codeclimate.com/github/davidsilveira/renavam_validator/test_coverage)
[![Build Status](https://app.travis-ci.com/davidsilveira/renavam_validator.svg?branch=master)](https://app.travis-ci.com/davidsilveira/renavam_validator)

Welcome to RenavamValidator!
This gem is a simple number validator for the Brazilian vehicle document Renavam.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'renavam_validator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install renavam_validator

## Usage
It's very simple ;)
Just add the following code using your renavam number and the result will be `true` or `false`

```
Renavam.valid?(number)
```

## Contributing
- Fork it
- Make your implementations
- Send me a pull request

Thank you!

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
