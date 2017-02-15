module OceanKit
  module Resource
    # Image actions are commands that can be given to a DigitalOcean image.
    # In general, these requests are made on the actions endpoint of a specific image.
    class ImageAction < OceanKit::Resource::Base
      def image_actions
        self
      end
      def all(id)
        get("/images/#{id}/actions")
      end
      # Convert an Image to a snapshot,
      # for example, a backup to a snapshot.
      def convert_to_snapshot(id)
        post("/images/#{id}/actions", %({"type":"convert"}))
      end
      # To transfer an image to another region
      #
      def transfer(id, region)
        post("/images/#{id}/actions", %({"type":"convert", "region":#{region}}))
      end
    end
  end
end
