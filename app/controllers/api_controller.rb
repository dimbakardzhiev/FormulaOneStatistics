class ApiController < ApplicationController
  
  def drivers
  	@drivers = Driver.all
  	respond_to do |format|
	  	format.html
	  	format.json { render json: @drivers}
	 end
  end

  def results
  	@results = Result.all
  	respond_to do |format|
	  	format.html
	  	format.json { render json: @results}
	 end
  end

  def races
  	@races = Race.all
  	respond_to do |format|
	  	format.html
	  	format.json { render json: @races}
	 end
  end
end