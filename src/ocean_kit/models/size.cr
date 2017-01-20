"json"
module OceanKit
	class Size
		JSON.mapping({
			slug : String,
			memory : Bool,
			vcpus : Int32,
			disk : Int32,
			transfer : Int32,
			price_monthly : Int32,
			price_hourly : Int32,
			regions : Array[String],
			available : Bool,
			})
			def_equals sizes
	end
end
