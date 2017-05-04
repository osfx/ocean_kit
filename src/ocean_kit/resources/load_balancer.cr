module OceanKit
  module Resource
    class LoadBalancer < OceanKit::Resource::Base

      def load_balancers
        self
      end

      def all
        get("/load_balancers")
      end
      # Retrieve information about a specific certificate
      def find(id)
        get("/load_balancers/#{id}")
      end

      def create(options)
        post("/load_balancers", options.to_json)
      end

      def create_with_tag(options)
        post("/load_balancers", options.to_json)
      end

      def update(id, options)
        put("/load_balancers/#{id}", options.to_json)
      end

      def add_droplet(id, options)
        post("/load_balancers/#{id}/droplets", options.to_json)
      end

      def remove_droplet(id, options)
        delete("/load_balancers/#{id}/droplets", options.to_json)
      end

      def add_rule(id, options)
        post("/load_balancers/#{id}/forwarding_rules", options.to_json)
      end

      def remove_rule(id, options)
        delete("/load_balancers/#{id}/forwarding_rules", options.to_json)
      end

      def delete(id)
        destroy("/load_balancers/#{id}")
      end

    end
  end
end
