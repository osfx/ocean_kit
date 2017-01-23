module OceanKit
	module Resource
		module AccountResource
			
			def account
				self
			end

			def info
				get("/account")
			end
		end
	end
end
