# Slim::Slimmer

[![Build Status](https://travis-ci.org/neilang/slim-slimmer.svg?branch=master)](https://travis-ci.org/neilang/slim-slimmer)

Experimental gem to automatically remove unnecessary html tags from your slim output.

As outlined in this [styleguide](https://google.github.io/styleguide/htmlcssguide.xml?showone=Optional_Tags#Optional_Tags) and the [HTML5 specification](https://html.spec.whatwg.org/multipage/syntax.html#syntax-tag-omission) it is safe to omit certain start or end tags from your code.

This gem adds an extra processing step to convert this Slim code:

```slim
doctype html
html
  head
    title Example

  body
    p Example
```

To this html output:

```html
<!DOCTYPE html>
<title>Example</title>
<p>Example
```

At the moment the gem is very generic and does not implement all the removal rules outlined in the specification (e.g. not removing a tag if it is followed by whitespace or a HTML comment etc.). Hopefully this detail can be added in a future release.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slim-slimmer', github: 'neilang/slim-slimmer'
```

And then execute:

    $ bundle

## Usage

For best results it is recommended that you change the output format from `xhtml` to `html` as this removes the end slash in self-closing tags:

```ruby
Slim::Engine.options[:format] = :html
```

You can optionally disable the slimmer feature via this configuration:

```ruby
Slim::Engine.options[:slimmer] = false
```
