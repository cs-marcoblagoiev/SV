class RatingsController < ApplicationController

  def create
    @rating = Rating.new
    @rating.score = params[:score]
    @car = Car.find(params[:car_id])
    @car.ratings << @rating
    @car.save
    render :json => { success: true }
  end
end
