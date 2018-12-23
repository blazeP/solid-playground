# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seeds start\n"

dwarves_data = [
  {
    original_name: "Więzień", english_name: "Prisoner", points_value: 3,
    description: "Siedzi za kratami, przykuty do cięźkiej kuli.",
    latitude: "51.112433", longitude: "17.032473", localization: "ul. Więzienna 6",
    district: Dwarf::DISTRICTS[:stare_miasto]
  },
  {
    original_name: "Klucznik", english_name: "Caretaker", points_value: 2,
    description: "W prawej ręcę trzyma klucz do podziemnego miasta.",
    latitude: "51.109742", longitude: "17.034349", localization: "ul. Szewska 74",
    district: Dwarf::DISTRICTS[:stare_miasto]
  },
  {
    original_name: "Lunatyk", english_name: "Sleepwalker", points_value: 5,
    description: "Można go spotkać na gzymsie, o krok od upadku z wysokości.",
    latitude: "51.111530", longitude: "17.026250", localization: "ul. św. Mikołaja 61-62",
    district: Dwarf::DISTRICTS[:stare_miasto]
  }
]
dwarves_data.each { |d| Dwarf.create(d) }
puts "Dwarves have been created"

users_data = [
  { email: "blazej@dwarf.com", first_name: "Błażej", password: "wroclaw1", password_confirmation: "wroclaw1" },
  { email: "michal@dwarf.com", first_name: "Michał", password: "wroclaw1", password_confirmation: "wroclaw1" }
]
users_data.each { |u| User.create(u) }
puts "Users have been created"

founds_data = [
  { user_id: 1, dwarf_id: 1, found_date: Date.new(2018, 12, 23) },
  { user_id: 1, dwarf_id: 2, found_date: Date.new(2018, 12, 23) },

  { user_id: 2, dwarf_id: 1, found_date: Date.new(2018, 12, 21) },
  { user_id: 2, dwarf_id: 3, found_date: Date.new(2018, 12, 22) }
]
founds_data.each { |f| Found.create(f) }
puts "Founds have been created"

puts "seeds end\n"
