module OceanKit
	class Droplet
		property name
		property region
		property image
		property size
		def initialize(name, region, image, size)
		end

		macro def instance_vars_names
			{{ @type.instance_vars.map &.name.stringify }}
		end
	end
end



# droplet = DropletKit::Droplet.new(name: 'mysite.com', region: 'nyc2', image: 'ubuntu-14-04-x64', size: '512mb')
