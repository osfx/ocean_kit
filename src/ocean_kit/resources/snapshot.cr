module OceanKit
	module Resource
	# Snapshots are saved instances of a Droplet or a volume, which
	# is reflected in the resource_type attribute. In order to avoid problems
	# with compressing filesystems, each defines a min_disk_size attribute which
	# is the minimum size of the Droplet or volume disk when creating a new resource
	# from the saved snapshot.
		class Snapshot < OceanKit::Resource::Base

			def snapshots
				self
			end
			# To list all of the snapshots available on your account,
			#
			# The response will be a `JSON` object with a key called snapshots.
			# This will be set to an array of snapshot objects, each of which will contain
			# the standard snapshot attributes
			def all
				get("/snapshots")
			end

			def find(id)
				get("/snapshots/#{id}")
			end

			def delete(id)
				destroy("/snapshots/#{id}")
			end
		end
	end
end
