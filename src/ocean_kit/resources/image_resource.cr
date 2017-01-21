module OceanKit
	# Images in DigitalOcean may refer to one of a few different kinds of objects.

	# An image may refer to a snapshot that has been taken of a Droplet instance.
	# It may also mean an image representing an automatic backup of a Droplet.
	# The third category that it can represent is a public Linux distribution or
	# application image that is used as a base to create Droplets.
	module ImageResource

		def images
			self
		end
		# To list all of the images available on your account
		#
		# The response will be a JSON object with a key called images. This
		# will be set to an array of image objects, each of which will contain
		# the standard image attributes:
		def all
			get("/images")
		end
		# To retrieve only distribution images, include the type query paramter
		# set to distribution
		def find(id)
			get("/images/#{id}")
		end

		def delete(id)
			destroy("/images/#{id}")
		end

		def update(id, name)
			options = {"name" => name }
			put("/images/#{id}", %(options}))
		end


		def all_distribution
			get("/images?type=distribution")
		end

		def all_application
			get("/images?type=application")
		end
		# To retrieve only the private images of a user
		def all_private
			get("/images?private=true")
		end
	end
end
