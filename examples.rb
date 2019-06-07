Date.today # Friday Jun 7th 2019
Daynamic.day_of_week?(Date.today, :friday) # check if it matches a given weekday
Daynamic.day_of_week?(Date.today, 5) # also works with numerical days 0..6
Daynamic.day_of_week?(Date.today, :thursday) # does not match
Daynamic.day_of_week?(Date.today, :sunday) # does not match
Daynamic.day_of_week?(Date.today, 3) # does not match
Daynamic.week_range?(Date.today, Daynamic.day_of_week(:wednesday), Daynamic.day_of_week(:friday)) # check if it falls within the given range of days of the week
Daynamic.week_range?(Date.today, Daynamic.day_of_week(3), Daynamic.day_of_week(5)) # also works with numerical days 0..6
Daynamic.week_range?(Date.today, Daynamic.day_of_week(:monday), Daynamic.day_of_week(:thursday)) # does not match
Daynamic.week_range?(Date.today, Daynamic.day_of_week(1), Daynamic.day_of_week(4)) # does not match
Daynamic.weekday?(Date.today) # check if it's a weekday (mon-fri)
Daynamic.weekday?(Date.tomorrow) # does not match (sat)
Daynamic.weeknight?(Date.yesterday) # check if it's a weeknight (sun-thurs)
Daynamic.weeknight?(Date.today) # does not match (fri)
Daynamic.day_of_month?(Date.today, 7) # check if it matches a given day of the month 1..31
Daynamic.day_of_month?(Date.today, 1) # does not match
Daynamic.day_of_month?(Date.today, 22) # does not match
Daynamic.month_range?(Date.today, Daynamic.day_of_month(1), Daynamic.day_of_month(15)) # check if it falls within the given range of days of the month
Daynamic.month_range?(Date.today, Daynamic.day_of_month(1), Daynamic.day_of_month(5)) # does not match
Daynamic.month_range?(Date.today, Daynamic.day_of_month(10), Daynamic.day_of_month(20)) # does not match
Daynamic.date?(Date.today, 2019, 6, 7) # check if it matches a given date
Daynamic.date?(Date.today, 2020, 6, 7) # does not match (wrong year)
Daynamic.date?(Date.today, 2019, 7, 4) # does not match (wrong month/day)
Daynamic.date?(Date.today, 6, 7) # year is optional and if excluded is ambiguous/recurring
Daynamic.date?(Date.today, 7, 4) # does not match (wrong month/day)
Daynamic.date_range?(Date.today, Daynamic.date(2019, 6, 1), Daynamic.date(2019, 6, 15)) # check if it falls within a given date range
Daynamic.date_range?(Date.today, Daynamic.date(2018, 6, 1), Daynamic.date(2020, 6, 15)) # long range, so this year/today falls inside it
Daynamic.date_range?(Date.today, Daynamic.date(2019, 6, 1), Daynamic.date(2019, 6, 5)) # does not match
Daynamic.date_range?(Date.today, Daynamic.date(2020, 6, 1), Daynamic.date(2020, 6, 15)) # does not match (next year)
Daynamic.date_range?(Date.today, Daynamic.date(6, 1), Daynamic.date(6, 15)) # year is optional in ranges too, and if excluded is ambiguous/recurring
Daynamic.date_range?(Date.today, Daynamic.date(2, 1), Daynamic.date(3, 30)) # does not match
