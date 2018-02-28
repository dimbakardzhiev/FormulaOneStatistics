class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def redirect_if_not_found
  	flash[:notice] = "Sorry but that doesn't exist."
  	redirect_to("/piecharts")
  end
end