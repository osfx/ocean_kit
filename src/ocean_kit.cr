require "./ocean_kit/client/connection"
require "./ocean_kit/resources/base"

require "./ocean_kit/models/**"

require "./ocean_kit/**"
require "http/client"
require "json"
require "yaml"


module OceanKit

	extend self
	def key
    key = YAML.parse(File.read(".key"))
    return key["API-KEY"].to_s
  end
end
#
# #
ok = OceanKit::Client.new(OceanKit.key)

# puts ok.domains.create(name: "hash.yndx.host", ip_address: "1.2.3.4")
puts ok.domains.create %({"name": "string.yndx.host", "ip_address": "1.2.3.4"})
# puts %(addsa).class
