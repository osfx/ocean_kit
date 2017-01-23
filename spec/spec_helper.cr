require "webmock"
require "../src/ocean_kit/**"
require "../src/ocean_kit/resources/**"
require "../src/ocean_kit/client/**"
require "./support/*"
require "spec2"
# require "spec"
require "http/client"

include Spec2::GlobalDSL
Spec2.doc
# describe "Ocean" do
# 	context "Account" do
# 		it "worlk" do
# 			WebMock.stub :any, "http://www.example.com"
#
# 			response = HTTP::Client.get "http://www.example.com"
# 			response.status_code.should eq(200)
#
# 		end
# 	end
#
# end
