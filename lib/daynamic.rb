require "daynamic/engine"
require "daynamic/matchers"

module Daynamic
  def self.dump(obj)
    Matchers::Base.dump(obj)
  end

  def self.load(json)
    Matchers::Base.load(json)
  end

  def self.day_of_week(day)
    Matchers::Day.week(day)
  end

  def self.day_of_week?(compare, day)
    Matchers::Day.match_week?(compare, day)
  end

  def self.week_range(first, last)
    Matchers::Day.week_range(first, last)
  end

  def self.week_range?(compare, first, last)
    Matchers::Day.week_range?(compare, first, last)
  end

  def self.weekday
    Matchers::Day.weekday
  end

  def self.weekday?(compare)
    Matchers::Day.weekday?(compare)
  end

  def self.weeknight
    Matchers::Day.weeknight
  end

  def self.weeknight?(compare)
    Matchers::Day.weeknight?(compare)
  end

  def self.day_of_month(day)
    Matchers::Day.month(day)
  end

  def self.day_of_month?(compare, day)
    Matchers::Day.match_month?(compare, day)
  end

  def self.month_range(first, last)
    Matchers::Day.month_range(first, last)
  end

  def self.month_range?(compare, first, last)
    Matchers::Day.month_range?(compare, first, last)
  end

  def self.date(*args)
    Matchers::Date.new(*args)
  end

  def self.date?(compare, *args)
    Matchers::Date.match?(compare, *args)
  end

  def self.date_range(first, last)
    Matchers::Date.range(first, last)
  end

  def self.date_range?(compare, first, last)
    Matchers::Date.range?(compare, first, last)
  end
end
