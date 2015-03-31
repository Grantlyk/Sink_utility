# Sink

Sink was inspired by the DDoS of github and was created to help keep its users secure in knowing that their repo is safer as it's shared among several hosting services rather than one.

## Installation

Add this line to your application's Gemfile:

    gem 'sink_utility'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sink_utility

## Usage

### Basic
Currently Sink is in its very early stages and therefore has basic functionality, the basic idea behind sink version 0.1.0 is to be able to "Sink" (Sync) a github/bitbucket repo with a bitbucket/github repo. To use the software you will first need a github/bitbucket repo and an account on both services, once you have the repo that you want to "back up" on the opposite hosting service, you must go to the opposite hosting service and create a repo, then you may continue with this setup.


### Setup
To begin setup run:

    $ sink setup

and follow the on screen prompts

### Sync all repos
To Sync all repositories run:

    $ sink all

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
