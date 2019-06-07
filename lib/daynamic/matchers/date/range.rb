module Daynamic
  module Matchers
    module Date
      class Range
        attr_reader :first, :last

        def self.match?(compare, first, last)
          new(first, last).match?(compare)
        end

        def initialize(first, last)
          @first = first
          @last = last
          raise ArgumentError, "Range start must be less than range end" unless first < last
        end

        def match?(compare)
          compare.to_date >= first.date(compare) && compare.to_date <= last.date(compare)
        end
      end
    end
  end
end
