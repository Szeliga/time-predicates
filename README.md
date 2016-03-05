# Time Predicates

[![Build Status](https://secure.travis-ci.org/Szeliga/time-predicates.svg?branch=master)](https://travis-ci.org/Szeliga/time-predicates)
[![Code Climate GPA](https://codeclimate.com/github/Szeliga/time-predicates/badges/gpa.svg)](https://codeclimate.com/github/Szeliga/time-predicates)

Comparing dates and time gives me a headache every single time and I need to resolve to drawing timelines in order to determine if the > sign means that a date is in the future or the past in relation to the other one.

This little gem adds several helper predicates to Time and Date classes (and all classes that inherit from them, e.g. DateTime in rails), that help in writing and reading such conditions.

## Install

$ gem install time-predicates

or add to your `Gemfile`

gem "time-predicates"

## Description

Following predicate methods are available:

* `Date.parse("2016-03-05").after?(Date.parse('2016-03-04'))`
* `Date.parse("2016-03-05").after_or_equal?(Date.parse("2016-03-05"))`
* `Date.parse('2016-03-04').before?(Date.parse("2016-03-05"))`
* `Date.parse('2016-03-04').before_or_equal?(Date.parse('2016-03-04'))`

The method names are pretty self-explanatory.

## Copyright

Copyright (c) 2016 Szymon Szeliga

See [LICENSE](LICENSE.txt) for details.
