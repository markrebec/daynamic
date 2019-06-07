module Daynamic
  module Matchers
    module Day
      class Base < Matchers::Base
        attr_reader :day

        def self.match?(compare, day)
          new(day).match?(compare)
        end

        def initialize(day)
          @day = day
        end

        def match?(compare)
          raise NotImplentedError, "You must define a `match?` method when inheriting from Daynamic::Matchers::Day::Base"
        end
      end
    end
  end
end
