module OceanKit
	module API
		class Droplets < OceanKit::API::Base

			def all
				result(@client.get("#{@url}/droplets", headers:  @headers))
			end

			def create(options)
				result(@client.post("#{@url}/droplets", headers:  @headers, body: options.to_json))
			end

			def delete(id)
				@client.delete("#{@url}/droplets/#{id}", headers:  @headers)
			end
		end
	end
end
#
