module OceanKit
	module Resource
		# Floating IP actions are commands that can be given to a
		# DigitalOcean Floating IP. These requests are made on the actions
		# endpoint of a specific Floating IP.
		class FloatingIpAction < OceanKit::Resource::Base

			def floating_ip_actions
				self
			end
			
			# To assign a Floating IP to a Droplet
			def attach(ip, droplet_id)
				post("/floating_ips/#{ip}/actions", %({"type":"assign","droplet_id":"#{droplet_id}"}))
			end

			# Unassign a Floating IP
			def deattach(id)
				post("volumes/#{id}/actions", ({"type" => "unassign"}))
			end

		end
	end
end
