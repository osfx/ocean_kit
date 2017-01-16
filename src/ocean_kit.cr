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


ok = OceanKit::Client.new(OceanKit.key)
# puts ok.droplets.all
hash = {"name" => "mysite.com", "region" => "nyc2", "image" => "ubuntu-14-04-x64", "size" => "512mb", "ssh_keys" => ["1926091"]}
# %({"name":"example.com","region":"nyc3","size":"512mb","image":"ubuntu-14-04-x64","ssh_keys":["1926091"],"backups":false,"ipv6":true,"user_data":null,"private_networking":null,"volumes": null,"tags":["web"]})
# puts ok.droplets.create(hash)
puts ok.droplets.all
# keys = ok.ssh_keys.all
# (0..4).each do |n|
#   puts keys["ssh_keys"][n]["id"]
#   puts keys["ssh_keys"][n]["name"]
# end
