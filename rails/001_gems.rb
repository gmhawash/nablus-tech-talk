#!/usr/bin/env ruby
#
# Gems (& Rubies)

# - GEM: is a standalone library providing some functionality
# - BUNDLER: is a Gem package manager used to download gems from rubygem.org (and others),
#   and to autoload gems into application.
#   Use `require and require_relative` to load a gem (without bundler), a compiled library or dll
#

# 1. cd to rails/ folder
# 2. run: bundle
# 3. run: be ruby 001_gems.rb
# https://github.com/fazibear/colorize

=begin

   ++Gemfile.lock+--------------------+
   | source "https://rubygems.org"    |
   | gem 'rails'                      |
   | gem 'mine', git: 'github.com...' |     +-----------------+
   | gem 'local', path: '~/src/mygem' |     | rubygems.org    |
   |                                  |     |                 |
   |                                  |     |                 |
   +----------------------------------+ +-> |                 |
   ++bash+----------------------------+ |   +-----------------+
   |                                  | |   +-----------------+
   | bundle install   +-----------------+   | github.com      |
   |                                  | |   |                 |
   |                                  | +-> |                 |
   |                                  | |   |                 |
   |                                  | |   +-----------------+
   +----------------------------------+ |   +-----------------+
                                        |   |/home/n/src/mygem|
                                        |   |                 |
                                        +-> |                 |
                                            |                 |
                                            +-----------------+
=end

require 'bundler'
Bundler.require   # loads all gems from Gemfile

puts String.color_samples

puts "Ruby Red ".red
