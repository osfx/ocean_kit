require "http/client"
module OceanKit
	class Client

		module Connection
			# options = {} of String => String

			def get(path, options = nil)
				request "GET", path, options
			end

			def post(path, options)
				request "POST", path, options
			end

			def put(path, options)
				request "PUT", path, options
			end

			def delete(path, options = nil)
				request "DELETE", path, options
			end

			def request(http_method, path, options)
				response = HTTP::Client.exec(method: http_method, url: "#{@uri}/#{path}", headers: @headers, body: options.to_json)
				response.body
			end

		end
	end
end
