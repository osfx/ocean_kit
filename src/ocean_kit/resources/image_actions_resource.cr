module OceanKit
	module ImageActionResource

		def image_actions
			self
		end

		def all(id)
			get("/images/#{id}/actions")
		end

		# Convert an Image to a snapshot,
		# for example, a backup to a snapshot.
		def convert_to_snapshot(id)
			post("/images/#{id}/actions", %({"type":"convert"}))
		end

		# To transfer an image to another region
		#
		def transfer(id, region)
			options = {
				"type" => "transfer",
				"region" => region
			}
			post("/images/#{id}/actions", options)
		end
	end
end
