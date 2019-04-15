# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ApplicationRecord
    has_many :zones



  def self.find(city_key)
    if city_key.respond_to?(:to_str)
      return City.find_by(name: city_key)
    else
      return super city_key
    end
  end

end
