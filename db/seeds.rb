Restaurant.delete_all if Rails.env.development?

10.times do
  Restaurant.create({
    name: Faker::TvShows::GameOfThrones.house,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  })
end

puts "created #{Restaurant.count} restaurants"
