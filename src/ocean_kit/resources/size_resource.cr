module OceanKit
	module SizeResource
		def sizes
			self
		end

		def all
			get("/sizes")
		end
	end
end
