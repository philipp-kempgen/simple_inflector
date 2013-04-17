A simple no-frills "inflector".

Provides methods to transform class names to file names.

Author: Philipp Kempgen, [http://kempgen.net](http://kempgen.net)

## Examples
	    "FooBar"      .underscore  #=> "foo_bar"
	    "FooBar::Baz" .underscore  #=> "foo_bar/baz"
	  "::FooBar::Baz" .underscore  #=> "foo_bar/baz"
	    "HTTPRequest" .underscore  #=> "http_request"


## Usage

If you want to use the extensions to core classes (`String`):

	require 'simple_inflector/core_ext/string'
	puts "FooBar".underscore  #=> "foo_bar"

or

	require 'simple_inflector/core_ext'
	puts "FooBar".underscore  #=> "foo_bar"

otherwise

	require 'simple_inflector'
	::SimpleInflector.underscore( "FooBar" )  #=> "foo_bar"

