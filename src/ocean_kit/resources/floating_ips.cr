module OceanKit
	module Resource
		#
		# `Floating IP` objects represent a publicly-accessible
		# static IP addresses that can be mapped to one of
		# your Droplets. They can be used to create highly
		# available setups or other configurations requiring
		# movable addresses.
		#
		# `Floating IP` are bound to a specific region.
		#
		
		class FloatingIps < OceanKit::Resource::Base

			def floating_ips
				self
			end

			# List all of the Floating IPs available on your account
			#
			def all(ip)
				post("/floating_ips")
			end

			# On creation, a Floating IP must be either assigned
			# to a Droplet or reserved to a region
			def cretate(droplet_id)
				post("/floating_ips", ({"droplet_id": droplet_id }))
			end

			# Show information about a Floating IP
			#
			def find(floating_ip)
				get("/floating_ips/#{floating_ip}")
			end

			# Delete a Floating IP and remove it from your account
			# No response body will be sent back
			# Response code will be a 204, which means that the action was successful
			#
			def delete(floating_ip)
				destroy("/floating_ips/#{floating_ip}")
			end

		end
	end
end
