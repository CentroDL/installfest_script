# Our gems to install

echo "gem: --no-ri --no-rdoc" > ~/.gemrc

rebenv rehash

# Maintains a consistent environment for ruby applications.
gem install bundler

# Acceptance test framework for web applications
gem install capybara

# handle events on file system modifications
gem install guard

# JavaScript testing
gem install jasmine

# ruby interface for Postgres
gem install pg

# alternative to the standard IRB shell
gem install pry

# live syntax highlighting for the Pry REPL
gem install pry-coolline

# full stack, Web application framework
gem install rails

# testing tool for Ruby
gem install rspec

# a DSL for quickly creating web applications in Ruby
gem install sinatra

# common Sinatra extensions
gem install sinatra-contrib

# Ruby interface to github API v3
gem install github_api

# HipChat HTTP API Wrapper
gem install hipchat

# pretty print your Ruby objects with style
gem install awesome_print

# colorizing printed text on ANSI terminals
gem install rainbow
