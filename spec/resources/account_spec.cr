require "../spec_helper"
# require "../../src/ocean_kit/resources/**"
# require "../../src/ocean_kit/client/**"
require "http/client"
describe OceanKit::Resource do
	headers = HTTP::Headers{"Authorization" => "Bearer {api_key}", "Content-Type" => "application/json"}

	context "Account" do
		it "worl" do
			WebMock.stub :any, "www.example.com/hello"

			OceanKit::API::CLI.get("www.example.com/hello", headers: headers, body: "Hello!") do |response|
			  response.body_io.gets #=> "..."
			end
		end
	end
end
