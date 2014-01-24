# TaintAliases

[![Build Status](https://travis-ci.org/ruby-jokes/taint_aliases.png?branch=master)](https://travis-ci.org/ruby-jokes/taint_aliases)
[![Code Climate](https://codeclimate.com/github/ruby-jokes/taint_aliases.png)](https://codeclimate.com/github/ruby-jokes/taint_aliases)
[![Coverage Status](https://coveralls.io/repos/ruby-jokes/taint_aliases/badge.png?branch=master)](https://coveralls.io/r/ruby-jokes/taint_aliases?branch=master)
[![Dependency Status](https://gemnasium.com/ruby-jokes/taint_aliases.png)](https://gemnasium.com/ruby-jokes/taint_aliases)

Aliases `Object#taint` with other common idioms for taint, such as `#grundle` and `#fleshy_fun_bridge`

## Installation

Add this line to your application's Gemfile:

    gem 'taint_aliases', require: true

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install taint_aliases

## Usage

Just `require taint_aliases`, or require in your Gemfile; then you can do this:

```ruby

obj = Object.new
obj.grundle

obj.tainted?
=> true

str = "Test String"
str.fleshy_fun_bridge

str.tainted?
=> true
```
It's that easy!

`taint_aliases` currently supplies the following methods to taint your objects:

* `grundle`
* `fleshy_fun_bridge`
* `perineum`
* `gouch`
* `gooch`
* `grundel`

Thanks to [threeifbywhiskey](https://github.com/threeifbywhiskey), you can now use equivalent methods to untaint and check the taintedness of your objects, e.g.:

```ruby

obj = Object.new
obj.grundle

obj.grundled?
=> true

obj.unperineum

obj.fleshy_fun_bridged?
=> false

```

## Contributors

* [Jason Lewis](https://github.com/canweriotnow)
* [Micah Gates](https://github.com/mgates)
* [Milt Reder](https://github.com/milt)
* [threeifbywhiskey](https://github.com/threeifbywhiskey)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License


Copyright &copy; 2014 Jason Lewis, Micah Gates

Distributed under the MIT License; see LICENSE.txt
