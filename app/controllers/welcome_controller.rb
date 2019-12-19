class WelcomeController < ApplicationController
  def index
    @playgrounds= [{latitude: "35.782312", longitude:"-78.622166"}]
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
