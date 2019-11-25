

# given that holiday_hash looks like this:
# {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }
# return the second element in the 4th of July array

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  #ALTERNATIVE - holiday_hash[:winter].each {|key, val| holiday_hash[:winter][key] << supply}
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each{|holiday, item| item << supply }
    end
  end
return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
        holiday.each{|holiday, item| item  << supply}
    end
  end
return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |seas, holiday|
    if seas == season
      holiday[holiday_name] = supply_array
  end
 end
 return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash.each do |seas, holi|
    if seas == :winter
      return holi.values.flatten
  end
 end
end


# require 'pry'
def all_supplies_in_holidays(holiday_hash)
  y = []
  i = 0
  x = holiday_hash.keys
  while x.length > i
    holiday_hash.each do|sea, hol|
      if sea == x[i]
        y << "#{sea.to_s.capitalize}:"
        hol.each {|hol, item| y << "  #{hol.to_s.gsub(/[_]/, ' ').split.map(&:capitalize).join(' ')}: #{item.join(", ")}"}
        i += 1
      end
    end
  end
  return y
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
