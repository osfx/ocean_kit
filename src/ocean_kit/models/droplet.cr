require "json"
module OceanKit
	class Droplet
		JSON.mapping(
			name: String,
			region: String,
			size: String,
			image: Int32|String,
		# 	ssh_key: {type: Array[String], nilable: true},
		# 	backups:
		# 	location: {type: String, nilable: true},
		)
	end
end
