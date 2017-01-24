module OceanKit
	module Resource
		class Account < OceanKit::Resource::Base
			def account
				self
			end
			
			def info
				get("/account")
			end
		end
	end
end
