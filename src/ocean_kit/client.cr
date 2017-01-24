require "./client/*"
# require "./resources/**"

module OceanKit
	class Client
		RESOURCES = {
			"domain" => :Domain, "domain_record" => :DomainRecord, "droplet_action" => :DropletAction,
			"floating_ip_action" => :FloatingIpAction, "floating_ip" => :FloatingIp,
			"image_action" => :ImageAction, "image" => :Image, "region" => :Region, "size" => :Size,
			"snapshot" => :Snapshot, "ssh_key" => :SSHKey, "volume_action" => :VolumeAction
		}

		def initialize(api_key : String)
			@@headers = HTTP::Headers{"Authorization" => "Bearer #{api_key}", "Content-Type" => "application/json"}
		end

		def account
			OceanKit::Resource::Account.new @@headers
		end

		def droplets
			OceanKit::Resource::Droplet.new @@headers
		end

		{% for method, class_name in RESOURCES %}
			def {{method.id}}s
				OceanKit::Resource:{{class_name}}.new @@headers
			end
		{% end %}
	end
end
