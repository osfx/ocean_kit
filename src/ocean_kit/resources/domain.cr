module OceanKit

  module Resource
    # ```
    # ocean_kit = OceanKit::Client.new("API-KEY")
    # ocean_kit.domains.create(name: "mydomain", ip_address: "1.2.3.4")
    # #=> {}
    # ocean_kit.domains.find("sdada")
    # #=> {}
    # ocean_kit.domains.delete(name: "dds")
    #
    #
    #
    #```
    class Domain < OceanKit::Resource::Base

      def domains
        self
      end

      # Return all domain list as `JSON`
      #
      def all
        get("/domains")
      end

      # Return `JSON::Any`
      #
      #```
      # ocean_kit = OceanKit::Client.new("API-KEY")
      # ok.domains.create("yndx.host", "1.2.3.4")
      # # => {"domain":{"name":"string.yndx.host","ttl":null,"zone_file":null}}
      #```
      def create(name, ip_address)
        post("/domains", %({"name":#{name}, "ip_address":"#{ip_address}"}))
      end

      def find(domain_name : String)
        get("/domains/#{domain_name}")
      end
      # # Update an existing record
      # def update(options)
      # 	put("/domain/#{name}/records/#{id}", options)
      # end
      # Return status_code
      #
      def delete(name, id)
        destroy("/domains/#{name}/records/#{id}")
      end
    end
  end
end
