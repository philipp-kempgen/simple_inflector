require 'simple_inflector'

class ::String
	
	# Makes an underscored, lowercase form from `self`.
	#
	# See {::SimpleInflector#underscore}.
	#
	# @return             [String]  Underscored name.
	#
	def underscore
		::SimpleInflector.underscore( self )
	end
	
end

