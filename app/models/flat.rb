class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :price_per_night, :number_of_guests, numericality: { only_integer: true }

  def self.search(search)
    if search
      where("name LIKE '%#{search}%'")
    else
      Flat.all
    end
  end
end
