module OceanKit
  module Resource
    class Droplet < OceanKit::Resource::Base

      def droplets
        self
      end

      def all
        get("/droplets")
      end

      def all(tag)
        get("/droplets?tag_name=#{tag}")
      end
      # Create new droplet
      # ok.droplets.create( {name: "12.com", region: "nyc3", size: "512mb", image: "ubuntu-16-04-x64", ipv6: "true", tags: ["web"]})
      #
      def create(options)
        post("/droplets", options.to_json)
      end
      # Delete a Droplet by ID
      #
      # No response body will be sent back, but the response code will indicate success.
      # Specifically, the response code will be a 204, which means that the action was
      # successful with no returned body data.
      def delete(id)
        destroy("/droplets/#{id}")
      end
      # Delete a Droplet by TAG
      #
      # No response body will be sent back, but the response code will indicate success.
      # Specifically, the response code will be a 204, which means that the action was
      # successful with no returned body data.
      def delete_for_tag(tag)
        destroy("/droplets?tag_name=#{tag}")
      end
      # Find Droplet Info by ID
      def find(id)
        get("/droplets/#{id}")
      end
      # Retrieve a list of all kernels available to a Dropet
      def kernels(id)
        get("/droplets/#{id}/kernels")
      end
      # Retrieve a list of all kernels available to a Dropet
      def backups(id)
        get("/droplets/#{id}/backups")
      end
      # Retrieve the snapshots that have been created from a Droplet,
      def snapshots(id)
        get("/droplets/#{id}/snapshots")
      end
      # Retrieve all actions that have been executed on a Droplet
      def actions(id)
        get("/droplets/#{id}/actions")
      end
    end
  end
end
