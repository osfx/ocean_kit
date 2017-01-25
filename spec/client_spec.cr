require "./spec_helper"

describe OceanKit::Client do
	context "Client" do
		let!(answer) { 42 }
		let!(key) {OceanKit.key}

		# expect(described_class.new.greet).to eq("hello world")
		it "is correct answer" do
		  expect(answer).to eq(42)
		end

		it "key size correct" do
		  expect(key.size).to eq 64
		end
		subject { OceanKit::Client.new "DASDAS" }

		it "works" do
		  expect(subject).to be_a OceanKit::Client
		end

		it "key have correct length" do
			expect(OceanKit.key.size).to eq 64

		end
	end
end
