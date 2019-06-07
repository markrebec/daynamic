module Daynamic
  module Matchers
    module Day
      class DayOfMonth < Base
        def initialize(day)
          raise ArgumentError, "Invalid day: #{day}. Days must be an integer within the 1..31 range" unless day.is_a?(Integer) && day >= 1 && day <= 31

          super(day)
        end

        def match?(compare)
          compare.day == day
        end
      end
    end
  end
end
