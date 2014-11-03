class Restaurant < ActiveRecord::Base
  # Remember to create a migration!
  has_many  :reviews

  def average_rating
    self.reviews.pluck(:rating).inject(:+)/self.reviews.length
  end

end
