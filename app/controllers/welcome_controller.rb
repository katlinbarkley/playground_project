class WelcomeController < ApplicationController
  def index
    @zipcode = params[:zipcode]
    @lat = params[:lat]
    @long = params[:long]
    @radius = params[:radius]
    @food = params[:food]
    @restrooms = params[:restrooms]
    @indoor = params[:indoor]
    @outdoor = params[:outdoor]
  end
end
