module OceanKit
  module Resource
    # Add SSH public keys to the interface so that you can embed your public key
    # into a Droplet at the time of creation. Only the public key is required to
    # take advantage of this functionality.
    class SSHKey < OceanKit::Resource::Base
      def ssh_key
        self
      end
      # List all of the keys in your account,
      def all
        get("/account/keys")
      end
      # Add a new SSH public key to your DigitalOcean account
      def create(name, public_key)
        get("/account/keys", %({"name": "#{name}", "public_key":"#{public_key}"}))
      end
      # Show information about a key,
      def find(id : Int32|String)
        get("/account/keys/#{id}")
      end
      # Destroy a public SSH key that you have in account
      def delete(id : Int32|String)
        dstroy("/account/keys/#{id}")
      end
      # Update the name of an SSH key
      def update(id, new_name)
        put("/account/keys/#{id}", %({"name":#{new_name}}))
      end
    end
  end
end
