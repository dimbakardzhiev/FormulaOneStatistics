class ChartsController < ApplicationController
  def drivers_points
  end

  def drivers_rank
  	@drivers = Driver.all
  	@results = Result.all
  end

  def wins_form
  	@results = Result.all
  	@races = Race.all
  	#@driver_fullname = Driver.find(@driver[:driver_id]).forename + " " + Driver.find(@driver[:driver_id]).surname

  end	

  def wins_pie_chart
  	@driver = params[:driver]
  	$year = params[:year]
  	@driver_name = Driver.find(@driver[:driver_id]).forename + " " +  Driver.find(@driver[:driver_id]).surname
  end
end
