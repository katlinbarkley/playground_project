class WelcomeController < ApplicationController
  def index
    @zipcode = params[:zipcode]
    @lat = params[:lat]
    @long = params[:long]
    @food = params[:food]
    @restrooms = params[:restrooms]
    @indoor = params[:indoor]
    @outdoor = params[:outdoor]
    @radius = params[:radius]

    @playgrounds = []

    if @long.present? && @lat.present?
      coord = [@lat, @long]
      @radius = params[:radius].present? ? params[:radius].to_i : 5
      Playground.where("latitude is not null and longitude is not null").each do |playground|
        if playground.distance_to(coord) <= @radius
          @playgrounds << playground
        end
      end
    end
  end

end
