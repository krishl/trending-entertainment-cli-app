# Trending Entertainment CLI App

This is a Ruby gem that lists out all currently trending shows and movies with their respective details based on real-time check-in data from Trakt.tv.

A show/movie is considered "Trending" based on the total amount of people who are currently "checked in" on the show/movie's page. The "checked in" status remains for the entire length of the total runtime for the show/movie.

A show/movie is considered "Most Anticipated" based on the total amount of people who have added that particular show/movie onto their "watchlist".

The detail views of each show/movie include publicly available data such as title, content rating, release year, description, genre, runtime, country, and language.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trending_entertainment_cli_app'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trending_entertainment_cli_app

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/krishl/trending_entertainment_cli_app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
