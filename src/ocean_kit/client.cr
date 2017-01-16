module OceanKit
	class Client

		def initialize(api_key : String)
			@key = api_key
		end

		def droplets
			# @uri = "/account/keys"
			droplets = OceanKit::API::Droplets.new @key
			return droplets
		end

		def ssh_keys

			ssh_keys  = OceanKit::API::SSHKeys.new @key
			return ssh_keys
		end


	end
end
