module OceanKit
	class VolumeResource
		def volumes
			self
		end

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
