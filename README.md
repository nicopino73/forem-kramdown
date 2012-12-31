# forem-kramdown

## Description

Provides [Kramdown](http://kramdown.rubyforge.org/) markup (with syntax highlighting by [CodeRay](http://coderay.rubychan.de/)) for [Forem](https://github.com/radar/forem) posts.

This gem is based on [forem-redcarpet](https://github.com/radar/forem-redcarpet).


## Requirements

This gem requires Rails 3.1+ and Forem 1.0.0.beta1.

This gem has been tested against the following Ruby versions:

* 1.8.7
* 1.9.2
* 1.9.3
* JRuby
* Rubinius


## Installation

Add this line to your application's Gemfile:

```ruby
gem "forem-kramdown"
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install forem-kramdown
```


## Usage

Specify this gem as a dependency of an application that also contains Forem:

```ruby
gem "forem", git: "git://github.com/radar/forem"
gem "forem-kramdown"
```

The code will do the rest!


## Contributing

1. [Fork it](https://github.com/phlipper/forem-kramdown/fork_select)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. [Create a Pull Request](hhttps://github.com/phlipper/forem-kramdown/pull/new)


## License

**sugar-rails**

* Freely distributable and licensed under the [MIT license](http://phlipper.mit-license.org/2012/license.html).
* Copyright (c) 2012 Phil Cohen (github@phlippers.net) [![endorse](http://api.coderwall.com/phlipper/endorsecount.png)](http://coderwall.com/phlipper)
* http://phlippers.net/
