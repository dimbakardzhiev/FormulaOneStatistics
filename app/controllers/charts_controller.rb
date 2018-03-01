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
    @same_driver_boolean = 0
  	@driver_first = params[:driver_first]
    @driver_second = params[:driver_second]
    @driver_first_name = Driver.find(@driver_first[:driver_id]).forename + " " +  Driver.find(@driver_first[:driver_id]).surname
    @driver_second_name = Driver.find(@driver_second[:driver_id]).forename + " " +  Driver.find(@driver_second[:driver_id]).surname
    @drivers = Driver.find(@driver_first[:driver_id],@driver_second[:driver_id])
    @results = Result.all
    @year_line_chart = params[:year_line_chart]
    if (@year_line_chart == "") 
     redirect_to("/linecharts")
    end 
    if @driver_first == @driver_second
      @same_driver_boolean = 1
    end
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
    if $year == "" || @driver[:driver_id] == " "
     redirect_to("/piecharts")
    end
    if @driver[:driver_id] == " " && $year == ""
      redirect_to("/piecharts") 
    end
  end
end
