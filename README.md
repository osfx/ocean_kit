# ocean_kit

TODO: Write a description here

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  ocean_kit:
    github: [your-github-name]/ocean_kit
```


## Usage


```crystal
require "ocean_kit"



ok = OceanKit::Client.new(OceanKit.key)

droplet = {
  "name": "example.com",
  "region": "nyc3",
  "size": "512mb",
  "image": "ubuntu-14-04-x64",
  "tags": [
    "web"
  ]
}
ok.droplets.create(droplet.to_json)
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


puts ok.droplets.create(droplets.to_json)



ok.droplets.actions("39714163")
{"actions":[{"id":198989123,"status":"completed","type":"create","started_at":"2017-02-12T07:08:19Z","completed_at":"2017-02-12T07:08:51Z","resource_id":39714163,"resource_type":"droplet","region":{"name":"New York 3","slug":"nyc3","sizes":["512mb","1gb","2gb","4gb","8gb","16gb","m-16gb","32gb","m-32gb","48gb","m-64gb","64gb","m-128gb","m-224gb"],"features":["private_networking","backups","ipv6","metadata"],"available":true},"region_slug":"nyc3"}],"links":{},"meta":{"total":1}}
```


TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/[your-github-name]/ocean_kit/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[your-github-name]](https://github.com/[your-github-name]) osfx - creator, maintainer
