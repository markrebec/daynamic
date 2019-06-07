require "daynamic/engine"
require "daynamic/matchers"

module Daynamic
  def self.day_of_week(day)
    Matchers::Day::DayOfWeek.new(day)
  end

  def self.day_of_week?(compare, day)
    day_of_week(day).match?(compare)
  end

  def self.week_range(first, last)
    Matchers::Day::WeekRange.new(first, last)
  end

  def self.week_range?(compare, first, last)
    week_range(first, last).match?(compare)
  end

  def self.day_of_month(day)
    Matchers::Day::DayOfMonth.new(day)
  end

  def self.day_of_month?(compare, day)
    day_of_month(day).match?(compare)
  end

  def self.month_range(first, last)
    Matchers::Day::MonthRange.new(first, last)
  end

  def self.month_range?(compare, first, last)
      month_range(first, last).match?(compare)
  end

  def self.date(*args)
    Matchers::Date.new(*args)
  end

  def self.date?(compare, *args)
    date.match?(compare)
  end

  def self.date_range(first, last)
    Matchers::Date::Range.new(first, last)
  end

  def self.date_range?(compare, first, last)
    date_range(first, last).match?(compare)
  end
end
