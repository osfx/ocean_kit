require "./client/**"
require "./resources/**"

module OceanKit
	class Client
		# include OceanKit::DomainResource
		# include OceanKit::DomainRecordResource
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

		# include OceanKit::Client::Connection

		def initialize(api_key : String)
			# @@uri = URI.parse("https://api.digitalocean.com/v2")
			@@headers = HTTP::Headers{"Authorization" => "Bearer #{api_key}", "Content-Type" => "application/json"}
		end
		# Return Resource::Account object
		#
		def account
			OceanKit::Resource::Account.new @@headers
		end
		# Return **`Resource::Domain`** object
		#
		def domains
			OceanKit::Resource::Domain.new @@headers
		end
		# Return `Resource::Volume` object
		#
		def volumes
			OceanKit::Resource::Volume.new @@headers
		end
	end
end
