module OceanKit
	# Show information about a Block Storage volume
	# The response will be a `JSON` object with a key called volume
	# ### References
	# [](https://developers.digitalocean.com/documentation/v2/#ssh-keys)
	module Resource
		# The response will be a JSON object with a key called volumes.
		# This will be set to an array of volume objects, each of which will
		# contain the standard volume attributes.
		class Volume < OceanKit::Resource::Base
			def volumes
				self
			end
			# List all of the Block Storage volumes available on account
			def all
				get("/volumes")
			end
			#
			def create(options)
				post("/volumes", options)
			end

			def find(volume_id)
				get("/volumes/#{volume_id}", options)
			end

			def snapshots(volume_id)
				get("/volumes/#{volume_id}/snapshots")
			end

			def create_snapshot(volume_id, name)
				post("/volumes/#{volume_id}/snapshots", %({"name":"#{name}"}))
			end

			def delete(name, id)
				destroy("/volumes/#{volume_id}")
			end
		end
	end
end
