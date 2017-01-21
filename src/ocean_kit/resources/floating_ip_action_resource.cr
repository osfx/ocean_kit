module OceanKit
	module FloatingIpActionResource

		def floating_ip_actions
			self
		end

		def attach(ip)
			post("/floating_ips/#{ip}/actions", options)
		end

		def deattach(id)
			post("volumes/#{id}/actions", ({"type" => "unassign"}))
		end

	end
end
