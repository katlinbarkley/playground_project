class Playground < ActiveRecord::Base 
    mount_uploader :photo, PhotoUploader

    geocoded_by :look_up_address
    after_validation :geocode

    def look_up_address

      @address + ", " + "US"
      
    end