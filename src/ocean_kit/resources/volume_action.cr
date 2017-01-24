module OceanKit
	module Resource
		class VolumeAction < OceanKit::Resource::Base

			def volume_actions
				self
			end
			# Attach a Block Storage volume to a Droplet
			#
			# Each volume may only be attached to a single Droplet.
			# However, up to five volumes may be attached to a Droplet at a time
			def attach(volume_id, droplet_id)
				post("/volumes/#{volume_id}/actions", %({"type": "attach", "droplet_id": #{droplet_id}}))
			end
			# Detach a Block Storage volume from a Droplet
			def deattach(volume_id, droplet_id)
				post("/volumes/#{volume_id}/actions", %({"type": "attach", "droplet_id": #{droplet_id}}))
			end

			# Resize a Block Storage volume
			def resize(volume_id, size_gigabytes)
				post("/volumes/#{volume_id}/actions", %({"type": "resize", "size_gigabytes": #{size_gigabytes}}))
			end
		end
	end
end
