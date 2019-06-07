require "daynamic/matchers/day/base"
require "daynamic/matchers/day/day_of_week"
require "daynamic/matchers/day/day_of_month"
require "daynamic/matchers/day/weekday"
require "daynamic/matchers/day/weeknight"
require "daynamic/matchers/day/range"
require "daynamic/matchers/day/week_range"
require "daynamic/matchers/day/month_range"

module Daynamic
  module Matchers
    module Day
      def self.week(day)
        DayOfWeek.new(day)
      end

      def self.match_week?(compare, day)
        week(day).match?(compare)
      end

      def self.week_range(first, last)
        WeekRange.new(first, last)
      end

      def self.week_range?(compare, first, last)
        week_range(first, last).match?(compare)
      end

      def self.weekday?(compare)
        Weekday.match?(compare)
      end

      def self.weeknight?(compare)
        Weeknight.match?(compare)
      end

      def self.month(day)
        DayOfMonth.new(day)
      end

      def self.match_month?(compare, day)
        month(day).match?(compare)
      end

      def self.month_range(first, last)
        MonthRange.new(first, last)
      end

      def self.month_range?(compare, first, last)
        month_range(first, last).match?(compare)
      end
    end
  end
end
