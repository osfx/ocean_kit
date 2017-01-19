require "./client/**"
require "./resources/**"

module OceanKit
	class Client
		# @options = {} of String => String

		include OceanKit::AccountResource
		include OceanKit::Client::Connection
		# include OceanKit::Client::SSHKeyResource
		include OceanKit::DropletResource
		include OceanKit::ImageActionResource
		include OceanKit::RegionResource
		include OceanKit::SizeResource


		def initialize(api_key : String)
			@uri = URI.parse("https://api.digitalocean.com/v2")
			@headers = HTTP::Headers{"Authorization" => "Bearer #{api_key}", "Content-Type" => "application/json"}
		end

	end
end
