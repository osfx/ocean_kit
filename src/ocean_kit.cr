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
