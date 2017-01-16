require "./ocean_kit/**"
require "yaml"
require "http/client"
require "json"
module OceanKit
  extend self
	def key
    key = YAML.parse(File.read(".key"))
    return key["API-KEY"].to_s
  end
end

puts OceanKit.key
ok = OceanKit::Client.new(OceanKit.key)
puts ok.ssh_keys.find("3926194")
