module OceanKit
	module RegionResource
		
		def regions
			self
		end

		def all
			get("/regions")
		end
	end
end
