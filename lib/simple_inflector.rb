# The inflector transforms class names etc.
#
module ::SimpleInflector
	
	# Makes an underscored, lowercase form from a camel-case
	# class name (that may include a namespace).
	#
	# Changes "`::`" to "`/`" to convert namespaces to (file
	# system) paths (to be used for `require`).
	#
	# Examples:
	#     "FooBar"      .underscore  #=> "foo_bar"
	#     "FooBar::Baz" .underscore  #=> "foo_bar/baz"
	#   "::FooBar::Baz" .underscore  #=> "foo_bar/baz"
	#     "HTTPRequest" .underscore  #=> "http_request"
	#
	# @param   klassname  [String]  Class name (may include module name).
	# @return             [String]  Underscored name.
	#
	def underscore( klassname )
		s = klassname.to_s.dup
		s.gsub!( /^::/, '' )  # get rid of leading "::"
		s.gsub!( /::/, '/' )  # replace namespace separator by "/"
		s.gsub!( /([A-Z0-9]+)([A-Z][a-z])/x ,'\\1_\\2' )  # un-camel-case
		s.gsub!( /([a-z0-9] )([A-Z]     )/x ,'\\1_\\2' )  # "
		s.tr!( '-', '_' )  # replace hyphens by underscores
		s.downcase!  # lowercase. who would have thought?
		s
	end
	
	extend self  # make instance methods available as class methods
	
end

require 'simple_inflector/version'

