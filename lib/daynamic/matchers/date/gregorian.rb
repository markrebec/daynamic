module Daynamic
  module Matchers
    module Date
      class Gregorian < Base
        attr_reader :day, :month, :year

        def initialize(*args)
          if args.length == 3
            @year = args[0]
            @month = args[1]
            @day = args[2]
          elsif args.length == 2
            @month = args[0]
            @day = args[1]
          else
            raise ArgumentError, "Gregorian dates require a day, month and optional year"
          end
          # TODO validate month 1..12 & day 1..31
        end

        def date(reference=::Date.today)
          return ::Date.new(year, month, day) if year.present?
          return ::Date.new(reference.year, month, day)
        end

        def match?(compare)
          compare.to_date == date(compare)
        end
      end
    end
  end
end
