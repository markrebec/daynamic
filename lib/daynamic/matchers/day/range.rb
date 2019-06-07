module Daynamic
  module Matchers
    module Day
      class Range
        attr_reader :first, :last

        def self.match?(compare, first, last)
          new(first, last).match?(compare)
        end

        def initialize(first, last)
          @first = first
          @last = last
          raise ArgumentError, "Range start and range end must be of the same type" unless first.class.name == last.class.name
        end

        def match?(compare)
          raise NotImplentedError, "You must define a `match?` method when inheriting from Daynamic::Matchers::Day::Range"
        end
      end
    end
  end
end
