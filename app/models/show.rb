class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:highest_rating)
  end
  
end