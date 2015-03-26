# Cherrypick

[![Build Status](https://travis-ci.org/werein/cherrypick.svg)](https://travis-ci.org/werein/cherrypick)  [![Code Climate](https://codeclimate.com/github/werein/cherrypick/badges/gpa.svg)](https://codeclimate.com/github/werein/cherrypick) [![Test coverage](https://codeclimate.com/github/werein/cherrypick/badges/coverage.svg)](https://codeclimate.com/github/werein/cherrypick) [![Version](https://badge.fury.io/rb/cherrypick.svg)](http://badge.fury.io/rb/cherrypick) [![Dependencies](https://gemnasium.com/werein/cherrypick.svg)](https://gemnasium.com/werein/cherrypick)

Bootstrap or outsource your Rails api/application

## Gems

### LogEntries

Using LogEntries for remote logging.

Add logentries gem into your `Gemfile`

```ruby
gem 'le'
```

And add variables with your LogEntries token and logging environments

* LOGENTRIES_TOKEN - LogEntries Token
* LOGENTRIES_ENVIRONMENT - (optional) In which environment are logs sending to server. Example: 'production'

## Controllers

### GET /locales/{iso_code}

Load and convert localization files from locales folder into JSON (or any other format specified by responders)

* iso_code - (optional) root node with iso_code is removed in this case. Example `/locales/en`
