module OceanKit
	module Resource
		# Images in DigitalOcean may refer to one of a few different kinds of objects.
		# An image may refer to a snapshot that has been taken of a Droplet instance.
		# It may also mean an image representing an automatic backup of a Droplet.
		# The third category that it can represent is a public Linux distribution or
		# application image that is used as a base to create Droplets.
		class Image < OceanKit::Resource::Base

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

			# Retrieve information about an image (public or private),
			# The response will be a JSON object with a key called image.
			# The value of this will be an image object containing the standard
			# image attributes.
			def find(id)
				get("/images/#{id}")
			end
			# Delete an image
			def delete(id)
				destroy("/images/#{id}")
			end

			# Update an image
			def update(id, name)
				options = {"name" => name }
				put("/images/#{id}", %(options}))
			end

			# Retrieve only distribution images
			def all_distribution
				get("/images?type=distribution")
			end
			# Retrieve only application images
			def all_application
				get("/images?type=application")
			end
			# To retrieve only the private images
			def all_private
				get("/images?private=true")
			end

		end
	end
end
