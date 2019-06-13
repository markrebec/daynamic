module Daynamic
  module Matchers
    module Day
      class WeekRange < Range
        def initialize(first, last)
          first = DayOfWeek.new(first) if first.is_a?(String) || first.is_a?(Symbol)
          last = DayOfWeek.new(last) if last.is_a?(String) || last.is_a?(Symbol)
          super(first, last)
          raise ArgumentError, "WeekRange can only be used with DayOfWeek objects" unless first.is_a?(DayOfWeek)
        end

        def match?(compare)
          compare.to_date.wday >= first.wday && compare.to_date.wday <= last.wday
        end
      end
    end
  end
end
