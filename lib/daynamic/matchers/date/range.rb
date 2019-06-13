module Daynamic
  module Matchers
    module Date
      class Range
        attr_reader :first, :last

        def self.match?(compare, first, last)
          new(first, last).match?(compare)
        end

        def initialize(first, last)
          first = Date.new(*first) if first.is_a?(Array)
          last = Date.new(*last) if last.is_a?(Array)
          @first = first
          @last = last
          raise ArgumentError, "Range start must be less than range end" unless @first.date < @last.date
        end

        def match?(compare)
          compare.to_date >= first.date(compare) && compare.to_date <= last.date(compare)
        end

        def as_json(opts={})
          { "date_range" => [first.as_json.values.first, last.as_json.values.first] }
        end
      end
    end
  end
end
