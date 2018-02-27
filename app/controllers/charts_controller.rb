class ChartsController < ApplicationController
  def drivers_points
  end

  def drivers_rank
  	@drivers = Driver.all
  	@results = Result.all
  end

  def wins_form
  	@results = Result.all
<<<<<<< HEAD
  	@races = Race.all
  	@years = Race.select(:year).distinct.where("year > 1999 AND year < 2018").order('year desc')
=======
  	@years = Race.select(:year).distinct
>>>>>>> a9913833ecb0e5cbb7ca8aec104424a57308cfca
  	#@driver_fullname = Driver.find(@driver[:driver_id]).forename + " " + Driver.find(@driver[:driver_id]).surname

  end	

  def wins_pie_chart
  	@driver = params[:driver]
  	@year = params[:year]
  	@year_string = @year[:year]
  	@driver_name = Driver.find(@driver[:driver_id]).forename + " " +  Driver.find(@driver[:driver_id]).surname
  end
end
