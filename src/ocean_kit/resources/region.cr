module OceanKit
	module Resource
		# A region in DigitalOcean represents a datacenter where Droplets
		# can be deployed and images can be transferred.
		#
		# Each region represents a specific datacenter in a geographic location.
		# Some geographical locations may have multiple "regions" available.
		# This means that there are multiple datacenters available within that area.
		class Region < OceanKit::Resource::Base

			def regions
				self
			end
			# Return list all of the regions that are available
			#
			# The response will be a JSON object with a key called regions.
			# The value of this will be an array of region objects, each of which will
			# contain the standard region attributes
			def all
				get("/regions")
			end
		end
	end
end
