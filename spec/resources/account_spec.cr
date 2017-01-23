require "../spec_helper"
# require "../../src/ocean_kit/resources/**"
# require "../../src/ocean_kit/client/**"
require "http/client"
describe OceanKit::Resource do
	it "worl" do
		ok = OceanKit::Resource::Account.new
		ok.info.to eq 1
	end
end
