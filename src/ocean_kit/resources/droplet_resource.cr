module OceanKit
	module DropletResource
		def droplets
			self
		end

		def all
			get("/droplets")
		end

		def create(options)
			post("/droplets", options)
		end

		def delete(id)
			delete("/droplets/#{id}")
		end
		#result(@client.post("#{@url}/droplets", headers:  @headers, body: options.to_json))
		# end
		#
		# def find(id)
		# 	get("/account/keys/#{id}", @options)
		# end
		#
		# def delete
		# end
		#
		# def update(id, new_name)
		# 	params = {
		# 		"name" => new_name
		# 	}
		# 	put("/account/keys/#{id}", params)
		# end
	end
end
