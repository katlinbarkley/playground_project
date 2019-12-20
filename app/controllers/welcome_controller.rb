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
      coord = [@lat,@long]
      @radius = params[:radius].to_i
      Playground.all.each do |playground|
        if playground.distance_to(coord) <= @radius
          @playgrounds << playground
        end

      end
    end
  end

end
