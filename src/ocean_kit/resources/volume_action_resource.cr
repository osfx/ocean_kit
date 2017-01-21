module OceanKit
	module VolumeActionResource

		def volume_actions
			self
		end

		def attach(options)
			post("/v2/volumes/actions", options)
		end

		def deattach(id)
			post("volumes/#{id}/actions")
		end

		def resize(id)
			destroy("/volumes/#{id}/actions")
		end
	end
end
