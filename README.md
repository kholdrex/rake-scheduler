# Rake Scheduler

Heroku Scheduler is an add-on for running jobs on your app at scheduled time intervals, much like cron in a traditional server environment. Run scheduled tasks every ```10 minutes```, ```every hour```, or ```every day```. 

To make it more powerfull, and run rake tasks every ```week```, ```month```, ```year```, you can use ```Rake Sheduler```
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rake_scheduler'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rake_scheduler

## Usage

```ruby
  RakeScheduler.daily('db:migrate')
  
  RakeScheduler.weekly('invoices:generate')
  
  RakeScheduler.yearly('products:discount')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rake_scheduler. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

