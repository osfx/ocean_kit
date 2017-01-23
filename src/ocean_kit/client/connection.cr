require "http/client"
module OceanKit
	class Client

		module Connection
			@@uri = "https://api.digitalocean.com/v2"
			@@headers : HTTP::Headers|Nil
			# @@options : String|Nil

			# def headers(headers = nil)
			# 	@@headers|= headers if headers
			# end

			def get(path, options = nil)
				request "GET", path, options
			end

			def post(path, options)
				request "POST", path, options
			end

			def put(path, options)
				request "PUT", path, options
			end

			# NOTE: Method with delete name crash system
			def destroy(path, options = nil)
				request "DELETE", path, options
			end

			def request(http_method, path, options)
				# options.to_json if options != String
				response = HTTP::Client.exec(method: http_method, url: URI.parse("#{@@uri+path}"), headers: @@headers, body: options)
				if response.status_code == 204
					return "ok"
				else
					response.body
				end
			end
		end
	end
end
