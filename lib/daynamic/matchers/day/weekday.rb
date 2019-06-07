module Daynamic
  module Matchers
    module Day
      class Weekday < Matchers::Base
        def match?(compare)
          [:monday, :tuesday, :wednesday, :thursday, :friday].any? do |day|
            DayOfWeek.new(day).match?(compare)
          end
        end
      end
    end
  end
end
