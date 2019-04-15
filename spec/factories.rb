require 'faker'

FactoryBot.define do
  
  factory :city do
    name { Faker::Name.unique.name }
  end
end