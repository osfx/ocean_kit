module OceanKit
	module DropletResource

		def droplets
			self
		end

		def all
			get("/droplets")
		end

		def all(tag)
			get("/droplets?tag_name=#{tag}")
		end

		def create(options)
			post("/droplets", options)
		end

		def delete(id)
			destroy("/droplets/#{id}")
		end

		def delete_for_tag(tag)
			delete("/droplets?tag_name=#{tag}")
		end

		def find(id)
			get("/droplets/#{id}")
		end

		def kernels(id)
			get("/droplets/#{id}/kernels")
		end

		def backups(id)
			get("/droplets/#{id}/backups")
		end

		def snapshots(id)
			get("/droplets/#{id}/snapshots")
		end

		def actions(id)
			get("/droplets/#{id}/actions")
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
