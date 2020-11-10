10.times do
  Pet.create!(
    name: Faker::Superhero.name,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    found_on: Date.today
  )
end
