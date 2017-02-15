module OceanKit
  module Resource
    class Base
      include OceanKit::Client::Connection

      def initialize(headers : HTTP::Headers|Nil)
        @@headers = headers
      end
    end
  end
end
