module OceanKit
	module API
		class SSHKeys < OceanKit::API::Base

			# Return list all of the keys in your account
			def all
				response = @client.get("#{@url}/account/keys", headers:  @headers)
				result(response)
			end

			# Create new ssh_key
			def create(name : String, public_key : String)
				response = @client.post("#{@url}/account/keys", headers:  @headers, body: %({"name":"#{name}","public_key":"#{public_key}"}))
				result(response)
			end

			# Find key by id or fingerprint
			def find(id)
				response = @client.get("#{@url}/account/keys/#{id}", headers:  @headers)
				result(response)
			end

			# Update the name of an SSH key
			#
			# ```
			# ok = OceanKit::API::SSHKey.new("API-KEY")
			# ok.edit_key(6161944) # => {"ssh_key" => {"id" => 6161944, "fingerprint" => "3b:16:bf:e4:8b:00:8b:b8:59:8c:a9:d3:f0:19:45:fa", "public_key" => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAQQDDHr/jh2Jy4yALcK4JyWbVkPRaWmhck3IgCoeOO3z1e2dBowLh64QAM+Qb72pxekALga2oi4GvT+TlWNhzPH4V example", "name" => "My NEW Name"}}
			# ```
			def update(id, name)
				response = @client.put("#{@uri}/account/keys/#{id}", headers:  @headers, body: %({"name":"#{name}"}))
				result(response)
			end

			# Destroy a public SSH key that you have in your account
			#
			# ```
			# ok = OceanKit::API::SSHKey.new("API-KEY")
			# ok.destroy_key("123456") # => %<{"name":"foo","values":[1,2,3]}>
			#
			# ```
			def delete(id)
				response = @client.delete("#{@uri}/account/keys/#{id}", headers:  @headers)
				result(response)
			end


		end
	end

end
