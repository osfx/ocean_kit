require "./spec_helper"

describe OceanKit do
  context "Client" do
    it "with invalid key no auth" do
      client = OceanKit::Client.new("xxx")
      (client.account.info).should eq "{\"id\": \"unauthorized\", \"message\": \"Unable to authenticate you.\" }"
    end
    it "with valid key no auth" do
      client = OceanKit::Client.new(ENV["DIGITAL_OCEAN_API_KEY"])
      (client.account.info).should match /uuid/
    end
    it "work" do
      (true).should eq true
    end
  end
end
