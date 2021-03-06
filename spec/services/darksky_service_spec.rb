require 'rails_helper'

describe DarkskyService do
  it 'grabs weather data when given a latitude and longitude' do
    # These are the coordinates for Denver
    coordinates = { lat: 39.7392358, lng: -104.990251 }

    service = DarkskyService.new
    data = service.weather_data(coordinates)
    expect(data[:latitude]).to eq(coordinates[:lat])
    expect(data[:longitude]).to eq(coordinates[:lng])
  end
end
