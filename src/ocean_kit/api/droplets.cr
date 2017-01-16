module OceanKit
	module API
		class Droplets < OceanKit::API::Base
			
			def all
				result(@client.get("#{@uri}/droplets", headers:  @headers))
			end


		end
	end
end
#
