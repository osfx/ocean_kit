module OceanKit
	class DomainResource
		def domains
			self
		end

		def all
			get("/domains/#{id}/records")
		end

		def create(id, options)
			post("/domains/#{id}/records", options)
		end

		def find(name, id)
			get("/domains/#{name}/records/#{id}")
		end
		def update(options)
			put("/domain/#{name}/records/#{id}", options)
		end

		def delete(name, id)
			destroy("/domains/#{name}/records/#{id}")
		end
	end
end
