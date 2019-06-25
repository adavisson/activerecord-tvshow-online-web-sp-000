class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    binding.pry
    most_popular = self.where('rating = ?', highest_rating)
    most_popular
  end
  
end