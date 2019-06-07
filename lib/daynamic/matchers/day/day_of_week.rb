module Daynamic
  module Matchers
    module Day
      class DayOfWeek < Base
        WEEKDAYS = [:sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday].freeze

        def initialize(day)
          if day.is_a?(Integer)
            raise ArgumentError, "Invalid day: #{day}. Numeric days must be an integer within the 0..6 range" unless day >= 0 && day <= 6
          else
            raise ArgumentError, "Invalid day: #{day}. Days must be a valid weekday string or symbol (i.e. sunday, monday...)" unless WEEKDAYS.include?(day.to_sym)
          end

          super(day)
        end

        def wday
          if day.is_a?(Integer)
            day
          else
            WEEKDAYS.index do |key|
              key == day.to_sym
            end
          end
        end

        def match?(compare)
          if day.is_a?(Integer)
            compare.wday == day
          else
            compare.send("#{day}?")
          end
        end
      end
    end
  end
end
