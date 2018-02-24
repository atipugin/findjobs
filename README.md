# findjobs

[![Build Status](https://travis-ci.org/atipugin/findjobs.svg)](https://travis-ci.org/atipugin/findjobs)
[![Code Climate](https://codeclimate.com/github/atipugin/findjobs/badges/gpa.svg)](https://codeclimate.com/github/atipugin/findjobs)
[![Gem Version](https://badge.fury.io/rb/findjobs.svg)](http://badge.fury.io/rb/findjobs)

Simple CLI tool to help you find your next job. Based on RSS feeds of various job boards (GitHub, StackOverflow etc).

![](https://raw.githubusercontent.com/atipugin/findjobs/master/images/example.gif)

List of currently supported sources:
- [GitHub](https://jobs.github.com/)
- [StackOverflow](https://careers.stackoverflow.com/)
- [Authentic Jobs](https://authenticjobs.com/)

Want more? [Let me know!](https://github.com/atipugin/findjobs/issues/new)

## Installation

Just add water (i.e. install the gem):

    $ gem install findjobs

## Usage

Find all jobs by term (e.g. "ruby"):

    $ findjobs ruby

Find jobs in specific location:

    $ findjobs ruby --location=berlin

Display jobs posted last 7 days:

    $ findjobs ruby --days=7

## Plans

1. Add more sources
2. Add more search options (remote work, visa sponsorship etc)

## Contributing

1. Fork it ( https://github.com/atipugin/findjobs/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
