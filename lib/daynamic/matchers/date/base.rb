module Daynamic
  module Matchers
    module Date
      class Base < Matchers::Base
        def self.match?(compare, *args)
          new(*args).match?(compare)
        end

        def match?(compare)
          raise NotImplentedError, "You must define a `match?` method when inheriting from Daynamic::Matchers::Date::Base"
        end
      end
    end
  end
end
