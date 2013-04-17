# -*- encoding: utf-8 -*-

lib_dir = File.expand_path( '../lib/', __FILE__ )
$LOAD_PATH.unshift( lib_dir )

require 'simple_inflector/version'

spec = Gem::Specification.new { |s|
	s.name         = 'simple_inflector'
	s.version      = ::SimpleInflector::VERSION_STR
	s.summary      = "A simple no-frills \"inflector\"."
	s.description  = "Provides methods to transform class names to file names."
	s.author       = "Philipp Kempgen"
	s.homepage     = 'https://github.com/philipp-kempgen/simple_inflector'
	s.platform     = Gem::Platform::RUBY
	s.require_path = 'lib'
	s.executables  = []
	s.files        = Dir.glob( '{lib,bin}/**/*' ) + %w(
		README.md
	)
}


# Local Variables:
# mode: ruby
# indent-tabs-mode: t
# End:

