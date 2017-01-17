require "./client/**"
require "./resources/**"

module OceanKit
	class Client
		# @options = {} of String => String

		include OceanKit::Client::Account
		include OceanKit::Client::Connection
		include OceanKit::Client::SSHKeyResource
		include OceanKit::DropletResource

		def initialize(api_key : String)
			@uri = URI.parse("https://api.digitalocean.com/v2")
			@headers = HTTP::Headers{"Authorization" => "Bearer #{api_key}", "Content-Type" => "application/json"}
		end

	end
end
