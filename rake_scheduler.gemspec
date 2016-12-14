# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake_scheduler/version'

Gem::Specification.new do |spec|
  spec.name          = 'rake_scheduler'
  spec.version       = RakeScheduler::VERSION
  spec.authors       = ['kholdrex']
  spec.email         = ['alexandrkholodniak@gmail.com']

  spec.summary       = %q{Run your rake taks with Heroku Scheduler (daily, weekly, monthly, yearly}
  spec.description   = %q{Heroku Scheduler is an add-on for running jobs on your app at scheduled time intervals, much like cron in a traditional server environment.}
  spec.homepage      = 'https://elements.heroku.com/addons/scheduler'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
end
