require "./client/**"
require "./resources/**"

module OceanKit
	class Client
		# @options = {} of String => String
		property uri
		include OceanKit::AccountResource
		include OceanKit::DomainResource
		include OceanKit::DomainRecordResource
		include OceanKit::DropletActionsResource
		include OceanKit::DropletResource
		include OceanKit::FloatingIpActionResource
		include OceanKit::FloatingIpsResource
		include OceanKit::ImageActionResource
		include OceanKit::ImageResource
		include OceanKit::RegionResource
		include OceanKit::SizeResource
		include OceanKit::SnapshotResource
		include OceanKit::SSHKeyResource
		include OceanKit::VolumeActionResource
		include OceanKit::VolumeResource

		include OceanKit::Client::Connection



		def initialize(api_key : String)
			@uri = URI.parse("https://api.digitalocean.com/v2")
			@headers = HTTP::Headers{"Authorization" => "Bearer #{api_key}", "Content-Type" => "application/json"}
		end

	end
end

#
# def account(requ, &)
# end
#
# def info
# 	get("/account")
# end
