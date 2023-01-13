# HAL OpenScience

[![Gem Version](https://badge.fury.io/rb/hal_openscience.svg)](https://badge.fury.io/rb/hal_openscience)

API wrapper for [HAL OpenScience](https://hal.science/).

[API official documentation](https://api.archives-ouvertes.fr/docs)

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add hal_openscience

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install hal_openscience

## Usage

### Search Author

```ruby
response = HalOpenscience::Author.search("John Smith", fields: ['*'])
# response.results => [#<HalOpenscience::Author>, #<HalOpenscience::Author>, ...]
```

### Search Documents

```ruby
response = HalOpenscience::Document.search("Quantum Physics", fields: ["docid", "title_s", "citationRef_s", "uri_s"], limit: 1000)
# response.results => [#<HalOpenscience::Document>, #<HalOpenscience::Document>, ...]
```

### Search Documents by Person ID

```ruby
response = HalOpenscience::Document.search_by_person_id(1063453)
# response.results => [#<HalOpenscience::Document>, #<HalOpenscience::Document>, ...]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/noesya/hal_openscience. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/noesya/hal_openscience/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HalOpenscience project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/noesya/hal_openscience/blob/main/CODE_OF_CONDUCT.md).
