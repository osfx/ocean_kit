module OceanKit
	module Resource
		class Account < OceanKit::Resource::Base

			def info
				get("/account")
			end
		end
	end
end
