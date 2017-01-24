module OceanKit
	module Resource
		# Sizes objects represent different packages of hardware resources
		# that can be used for Droplets. When a Droplet is created, a size must
		# be selected so that the correct resources can be allocated.
		#
		# Each size represents a plan that bundles together specific sets of
		# resources. This includes the amount of RAM, the number of virtual CPUs,
		# disk space, and transfer. The size object also includes the pricing
		# details and the regions that the size is available in.
		class Size < OceanKit::Resource::Base
			def sizes
				self
			end
			# List all of the sizes
			#
			# The response will be a JSON object with a key called sizes.
			# The value of this will be an array of size objects each of which
			# contain the standard sizes attributes:
			def all
				get("/sizes")
			end
		end
	end
end
