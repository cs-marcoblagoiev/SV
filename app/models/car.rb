class Car < ActiveRecord::Base
	has_many :ratings

	def average_rating
  		ratings.sum(:score) / ratings.size unless ratings.empty?

	end


end
