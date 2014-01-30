# Grape::Bugsnag

[![Gem Version](https://badge.fury.io/rb/grape-bugsnag.png)](http://badge.fury.io/rb/grape-bugsnag) [![Build Status](https://travis-ci.org/blackxored/grape-bugsnag.png)](https://travis-ci.org/blackxored/grape-bugsnag) [![Coverage Status](https://coveralls.io/repos/blackxored/grape-bugsnag/badge.png?branch=master)](https://coveralls.io/r/blackxored/grape-bugsnag) [![Dependency Status](https://gemnasium.com/blackxored/grape-bugsnag.png)](https://gemnasium.com/blackxored/grape-bugsnag) [![Code Climate](https://codeclimate.com/github/blackxored/grape-bugsnag.png)](https://codeclimate.com/github/blackxored/grape-bugsnag)

This Grape extension enhances default error middleware to notify of exceptions through
Bugsnag before responding.

## Installation

Add this line to your application's Gemfile:

    gem 'grape-bugsnag'

## Usage

Just works! ;) Make sure to have your Bugsnag credentials specified elsewhere in
your Rails/Sinatra/Rack app.

## TODO

* Allow more fine-grained control of which exceptions get notified.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/grape-bugsnag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
