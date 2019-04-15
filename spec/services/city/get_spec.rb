require "rails_helper"
require './app/service/city/get'

RSpec.describe City do

  describe "GET new" do

    before(:each) do
      @city = create(:city)
    end

    it 'Should retrieve the city by name' do
      expect(City.find(@city.name)).to eq(@city)
    end

    it 'Should retrieve the city by id' do
      expect(City.find(@city.id)).to eq(@city)
    end
    
  end

end
