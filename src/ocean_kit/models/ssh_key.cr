module OceanKit
	class SSHKey

		def initialize(id : Int32|Nil = nil, fingerprint : String|Nil = nil, public_key : String|Nil = nil, name : String|Nil = nil)
			@id = id
			@fingerprint = fingerprint
			@public_key = public_key
			@name = name
		end

		# Return ssh_key
		#
		def ssh_key
			key = {
				"id" => @id,
				"fingerprint" => @fingerprint,
				"public_key" => @public_key,
				"name" => @name
			}
			key.reject! { |k, v| v == nil }
			key.to_json
		end

	end

end
