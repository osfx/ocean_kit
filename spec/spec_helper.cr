require "../src/ocean_kit"
require "./support/*"
require "spec2"
# require "spec"


include Spec2::GlobalDSL
Spec2.doc

class Greeting
	def greet(name)
		"Hello, " + name
	end
end
