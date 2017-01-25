# OceanKit
OceanKit is DigitalOcean V2 API client.
It support almost everethyng the API can do.


## Installation
Add this to your application's `shard.yml`:

```
dependencies:
  ocean_kit:
    github: osfx/ocean_kit
```


## Usage
This client based on official API client [droplet_kit]("https://github.com/digitalocean/droplet_kit") writen in Ruby.
So this means almost all methods work the same.

```ruby
require "ocean_kit"

ocean_kit = OceanKit::Client.new("API-KEY")
# Single droplet
droplet = {
  "name": "example.com",
  "region": "nyc3",
  "size": "512mb",
  "image": "ubuntu-14-04-x64",
  "tags": [
    "web"
  ]
}
ocean_kit.droplets.create(droplet)
# Multiple droplets
droplets = {
  "names": [
    "sub-01.example.com",
    "sub-02.example.com"
  ],
  "region": "nyc3",
  "size": "512mb",
  "image": "ubuntu-14-04-x64",
  "ipv6": true,
  "tags": [
    "xxx"
  ]
}
ocean_kit.droplets.create(droplets)
```


## Available methods
```ruby

ocean_kit = OceanKit::Client.new("API-KEY")

ocean_kit.account.info

ocean_kit.domain_records.all(domain_name)
ocean_kit.domain_records.create(domain, name, ip)
ocean_kit.domain_records.find(name)
ocean_kit.domain_records.delete(name)

ocean_kit.domains.all
ocean_kit.domains.create(name, ip_address)
ocean_kit.domains.find(domain_name : String)
ocean_kit.domains.delete(name, id)

ocean_kit.droplet_actions.reboot(id)
ocean_kit.droplet_actions.power_cycle(id)
ocean_kit.droplet_actions.shutdown(id)
ocean_kit.droplet_actions.power_off
ocean_kit.droplet_actions.power_on
ocean_kit.droplet_actions.password_reset(id)
ocean_kit.droplet_actions.enable_ipv6
ocean_kit.droplet_actions.enable_backups(id)
ocean_kit.droplet_actions.disable_backups(id)
ocean_kit.droplet_actions.rebuild(id, name)
ocean_kit.droplet_actions.restore(id)


ocean_kit.droplets.all
ocean_kit.droplets.all(tag)
ocean_kit.droplets.create(options )
ocean_kit.droplets.delete(id)
ocean_kit.droplets.delete_for_tag(tag)
ocean_kit.droplets.find(id)
ocean_kit.droplets.kernels(id)
ocean_kit.droplets.backups(id)
ocean_kit.droplets.snapshots(id)
ocean_kit.droplets.actions(id)

ocean_kit.floating_ip_actions.attach(ip, droplet_id)
ocean_kit.floating_ip_actions.deattach(id)

ocean_kit.floating_ips.all(ip)
ocean_kit.floating_ips.cretate(droplet_id)
ocean_kit.floating_ips.find(floating_ip)
ocean_kit.floating_ips.delete(floating_ip)

ocean_kit.image_actions.all(id)
ocean_kit.image_actions.convert_to_snapshot(id)
ocean_kit.image_actions.transfer(id, region)

ocean_kit.images.all
ocean_kit.images.find(id)
ocean_kit.images.delete(id)
ocean_kit.images.update(id, name)
ocean_kit.images.all_distribution
ocean_kit.images.all_application
ocean_kit.images.all_private

ocean_kit.regions.all
ocean_kit.sizes.all
ocean_kit.snapshots.all
ocean_kit.snapshots.find(id)
ocean_kit.snapshots.delete(id)

ocean_kit.ssh_key.all
ocean_kit.ssh_key.create(name, public_key)
ocean_kit.ssh_key.find(id : Int32|String)
ocean_kit.ssh_key.delete(id : Int32|String)
ocean_kit.ssh_key.update(id, new_name)

ocean_kit.volume_actions.attach(volume_id, droplet_id)
ocean_kit.volume_actions.deattach(volume_id, droplet_id)
ocean_kit.volume_actions.resize(volume_id, size_gigabytes)

ocean_kit.volumes.all
ocean_kit.volumes.create
ocean_kit.volumes.find(volume_id)
ocean_kit.volumes.snapshots(volume_id)
ocean_kit.volumes.create_snapshot(volume_id, name)
ocean_kit.volumes.delete(volume_id)

```

## Contributing

1. Fork it ( https://github.com/osfx/ocean_kit/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [osfx](https://github.com/osfx) osfx - creator, maintainer
