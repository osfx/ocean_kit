module OceanKit
	class SnapshotResource

		def snapshots
			self
		end

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
