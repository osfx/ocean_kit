module OceanKit
	module ImageResource

		def images
			self
		end

		def all
			get("/images")
		end

		def find(id)
			get("/images/#{id}")
		end

		def delete(id)
			destroy("/images/#{id}")
		end

		def update(id, name)
			options = {"name" => name }
			put("/images/#{id}", %(options}))
		end

		
		def all_distribution
			get("/images?type=distribution")
		end

		def all_application
			get("/images?type=application")
		end
		# To retrieve only the private images of a user
		def all_private
			get("/images?private=true")
		end
	end
end
