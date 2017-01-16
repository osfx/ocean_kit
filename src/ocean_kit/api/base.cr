module OceanKit
	module API
		class Base
			property client

			def initialize(key : String)
				@key = key
				@url = URI.parse("https://api.digitalocean.com/v2")
				@headers = HTTP::Headers{"Authorization" => "Bearer #{@key}", "Content-Type" => "application/json"}
				@client = HTTP::Client.new(@url)
			end

			private def result(response)
				result = JSON.parse(response.body)
				result
			end
		end
	end
end
