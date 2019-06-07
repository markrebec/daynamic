module Daynamic
  module Matchers
    class Base
      def self.match?(compare)
        new.match?(compare)
      end

      def match?(compare)
        # matches every day
        true
      end
    end
  end
end
