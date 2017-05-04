module OceanKit
  module Resource
    class Certificate < OceanKit::Resource::Base

      def certificates
        self
      end

      def all
        get("/certificates")
      end
      
      def find(id)
        get("/certificates/#{id}")
      end

      def create(options)
        post("/certificates", options.to_json)
      end

      def delete(id)
        destroy("/certificates/#{id}")
      end

    end
  end
end
