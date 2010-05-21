include Geokit::Geocoders
class FrontendController < ApplicationController
  def index
    @from = MultiGeocoder.geocode(request.remote_ip)
    @closest = CoastPoint.find_closest(:origin => @from)
    @to = MultiGeocoder.geocode("#{@closest.lat},#{@closest.lng}")
  end
end