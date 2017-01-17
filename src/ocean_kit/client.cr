require "./client/connection"
require "./client/account"


module OceanKit
	class Client
		include OceanKit::Client::Account
		include OceanKit::Client::Connection

		@options = {} of String => String

		def initialize(api_key : String)
			@uri = URI.parse("https://api.digitalocean.com/v2")
			@headers = HTTP::Headers{"Authorization" => "Bearer #{api_key}", "Content-Type" => "application/json"}
		end

	end
end
