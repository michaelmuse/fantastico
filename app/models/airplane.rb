class Airplane < ActiveRecord::Base
  attr_accessible :manufacturer, :name, :passenger_capacity, :year_made
end
