FactoryBot.define do
  factory :review do
    user_name { Faker::Movies::HarryPotter.character }
    rating { rand(1..5) }
    headline { Faker::Movies::HarryPotter.spell }
    body { Faker::Movies::HarryPotter.quote }
    place
  end

  factory :place do
    name { Faker::Movies::HarryPotter.location }
    city { Faker::Address.city }
    country { Faker::Address.country }

    factory :place_with_reviews do
      transient do
        reviews_count { 5 }
      end

      after(:create) do |place, evaluator|
        create_list(:review, evaluator.reviews_count, place: place)
      end
    end
  end
end
