# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'factory_bot_rails'

class Seed
  def self.begin
    Place.destroy_all
    seed = Seed.new
    seed.generate_places_with_reviews
  end

  def generate_places_with_reviews
    100.times do
      FactoryBot.create(:place_with_reviews)
    end
  end
end

Seed.begin
