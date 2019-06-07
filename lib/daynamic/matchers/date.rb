require "daynamic/matchers/date/base"
require "daynamic/matchers/date/gregorian"
require "daynamic/matchers/date/ordinal"
require "daynamic/matchers/date/range"

module Daynamic
  module Matchers
    module Date
      def self.match?(compare, *args)
        new(*args).match?(compare)
      end

      def self.new(*args)
        Gregorian.new(*args)
      end

      def self.ordinal(*args)
        Ordinal.new(*args)
      end
    end
  end
end
