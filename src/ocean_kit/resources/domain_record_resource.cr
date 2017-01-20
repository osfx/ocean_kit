module OceanKit
	class DomainRecordResource
		def domain_records
			self
		end

		def all
			get("/domains/#{id}/records")
		end

		# def create(name, ip)
		# 	options = {
		# 		"name" => name,	"ip" => ip
		# 	}
		# 	post("/domains/", options)
		# end
		#
		# def find(name)
		# 	get("/domains/#{id}")
		# end
		#
		# def delete(name)
		# 	destroy("/domains/#{id}")
		# end
	end
end
