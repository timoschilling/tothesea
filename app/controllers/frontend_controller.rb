include Geokit::Geocoders
class FrontendController < ApplicationController
  def index
    address = (request.remote_ip != '127.0.0.1') ? remote_ip : 'Bochum'
    @from = MultiGeocoder.geocode(address)
    @closest = CoastPoint.find_closest(:origin => @from)
    @to = MultiGeocoder.geocode("#{@closest.lat},#{@closest.lng}")
  end
end