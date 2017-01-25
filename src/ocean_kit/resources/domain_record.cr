module OceanKit
	module Resource
		# Domain record resources are used to set or retrieve information
		# about the individual DNS records configured for a domain. This
		# allows you to build and manage DNS zone files by adding and modifying
		# individual records for a domain.
		#
		# There is also an additional field called id that is auto-assigned
		# for each record and used as a unique identifier for requests. Each
		# record contains all of these attribute types. For record types that
		# do not utilize all fields, a value of null will be set for that record.
		class DomainRecord  < OceanKit::Resource::Base

			def domain_records
				self
			end
			# To get a listing of all records configured for a domain, send a GET
			# request to /v2/domains/$DOMAIN_NAME/records
			def all(domain_name)
				get("/domains/#{domain_name}/records")
			end

			def create(domain, name, ip)
				post("/domains/#{domain}", %({"name":"#{name}","ip":"#{ip}"}))
			end
			#
			def find(name)
				get("/domains/#{id}")
			end

			def delete(name)
				destroy("/domains/#{id}")
			end
		end
	end
end
