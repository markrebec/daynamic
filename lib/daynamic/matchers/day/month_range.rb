module Daynamic
  module Matchers
    module Day
      class MonthRange < Range
        def initialize(first, last)
          super(first, last)
          raise ArgumentError, "MonthRange can only be used with DayOfMonth objects" unless first.is_a?(DayOfMonth)
        end

        def match?(compare)
          compare.to_date.day >= first.day && compare.to_date.day <= last.day
        end
      end
    end
  end
end
