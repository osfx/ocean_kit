require "json"
module OceanKit
  class Mapping
    JSON.mapping({
      account: {type: Account, nilable: true}
      })
    class Account
      JSON.mapping({
        droplet_limit: Int32,
        floating_ip_limit: Int32,
        email: String,
        uuid: String,
        email_verifed: {type: Bool, nilable: true},
        status: String,
        status_message: String,
      })
    end
  end
end
