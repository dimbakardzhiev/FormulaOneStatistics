class ChartsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found
  
  def drivers_points
    @drivers = Driver.all
    @results = Result.all
    $year_column_chart = params[:year]
    if $year_column_chart == "" 
     redirect_to("/columncharts")
    end 
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

  def column_chart_form
  end  

  def wins_pie_chart
  	@driver = params[:driver]
  	$year = params[:year]
  	@driver_name = Driver.find(@driver[:driver_id]).forename + " " +  Driver.find(@driver[:driver_id]).surname
    if $year == "" 
     redirect_to("/piecharts")
    end 
  end
end
