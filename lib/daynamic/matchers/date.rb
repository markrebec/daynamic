require "daynamic/matchers/date/base"
require "daynamic/matchers/date/gregorian"
require "daynamic/matchers/date/ordinal"
require "daynamic/matchers/date/range"

module Daynamic
  module Matchers
    module Date
      def self.new(*args)
        Gregorian.new(*args)
      end

      def self.ordinal(*args)
        Ordinal.new(*args)
      end

      def self.match?(compare, *args)
        new(*args).match?(compare)
      end

      def self.range(first, last)
        Range.new(first, last)
      end

      def self.range?(compare, first, last)
        range(first, last).match?(compare)
      end
    end
  end
end
