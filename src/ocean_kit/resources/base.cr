module OceanKit
	module Resource
		class Base
			include OceanKit::Client::Connection

			def initialize(headers : HTTP::Headers|Nil)
				@@headers = headers
			end
			#
			# def account
			# 	self
			# end
			#
			# def info
			# 	get("/account")
			# end
			#
			# def show_headers
			# 	@@headers
			# end
		end
	end
end
