
module OceanKit
	class Client
		module Account

			def account
				self
			end

			def info
				get("/account", @options)
			end
		end
	end
end
