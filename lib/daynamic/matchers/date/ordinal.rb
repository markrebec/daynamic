module Daynamic
  module Matchers
    module Date
      class Ordinal < Base
        attr_reader :day, :year

        def initialize(*args)
          if args.length == 2
            @year = args[0]
            @day = args[1]
          elsif args.length == 1
            @day = args[0]
          else
            raise ArgumentError, "Ordinal dates requre a day and optional year"
          end
          # TODO validate day 1..365 (leaps?)
        end

        def date(reference=::Date.today)
          return ::Date.ordinal(year, day) if year.present?
          return ::Date.ordinal(reference.year, day)
        end

        def match?(compare)
          compare.to_date == date(compare)
        end
      end
    end
  end
end
