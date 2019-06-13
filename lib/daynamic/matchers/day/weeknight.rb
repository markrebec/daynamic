module Daynamic
  module Matchers
    module Day
      class Weeknight < Matchers::Base
        def match?(compare)
          [:sunday, :monday, :tuesday, :wednesday, :thursday].any? do |day|
            DayOfWeek.new(day).match?(compare)
          end
        end

        def as_json(opts={})
          { self.class.name.demodulize.underscore => nil }
        end
      end
    end
  end
end
