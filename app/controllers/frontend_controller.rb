include Geokit::Geocoders
class FrontendController < ApplicationController
  def index
    @from = MultiGeocoder.geocode('93.131.231.95')
    @closest = CoastPoint.find_closest(:origin => @from)
    @to = MultiGeocoder.geocode("#{@closest.lat},#{@closest.lng}")
  end
end