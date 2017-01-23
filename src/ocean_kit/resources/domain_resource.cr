# module OceanKit
# 	# ```
# 	# ocean_kit = OceanKit::Client.new("API-KEY")
# 	# domains.create(name: "mydomain", ip_address: "1.2.3.4")
# 	#```
# 	module DomainResource
# 		# @config : JSON::Any
# 		# def domains
# 		# 	self
# 		# end
#
# 		def all
# 			get("/domains")
# 		end
# 		# Return response
# 		#
# 		def create(**options)
# 			post("/domains", options.to_json)
# 		end
#
# 		def find(domain_name : String)
# 			get("/domains/#{domain_name}")
# 		end
#
# 		def update(options)
# 			put("/domain/#{name}/records/#{id}", options)
# 		end
#
# 		def delete(name, id)
# 			destroy("/domains/#{name}/records/#{id}")
# 		end
# 	end
# end
