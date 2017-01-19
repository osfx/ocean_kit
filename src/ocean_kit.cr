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


ok = OceanKit::Client.new(OceanKit.key)

#
# droplets = {
#   "names": [
#     "sub-01.example.com",
#     "sub-02.example.com"
#   ],
#   "region": "nyc3",
#   "size": "512mb",
#   "image": "ubuntu-14-04-x64",
#   "ipv6": true,
#   "tags": [
#     "xxx"
#   ]
# }


puts ok.droplets.images.all
