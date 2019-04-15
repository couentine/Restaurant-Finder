require "rails_helper"
require './app/service/city/create'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

RSpec.describe City do

  describe "Create new city" do

    before(:each) do
      @service = City::Create.new(
        name: Faker::Name.unique.name,
      )
    end

    it "Checks if an city is created" do
      @service.perform

      expect(City.count).to eq(1)
    end

  end
  DatabaseCleaner.clean
end
