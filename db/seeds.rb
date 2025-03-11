# db/seeds.rb

puts "Seeding Destinations..."
paris = Destination.create!(name: "Paris")
puts "Destination 'Paris' created."

new_york = Destination.create!(name: "New York")
puts "Destination 'New York' created."

tokyo = Destination.create!(name: "Tokyo")
puts "Destination 'Tokyo' created."

london = Destination.create!(name: "London")
puts "Destination 'London' created."

sydney = Destination.create!(name: "Sydney")
puts "Destination 'Sydney' created."

puts "Seeding Users..."
user1 = User.create!(
  email: "me@example.com",
  password: "password123",
  name: "User 1"
)
puts "User 1 created."

user2 = User.create!(
  email: "me2@example.com",
  password: "password123",
  name: "User 2"
)
puts "User 2 created."

user3 = User.create!(
  email: "me3@example.com",
  password: "password123",
  name: "User 3"
)
puts "User 3 created."

user4 = User.create!(
  email: "me4@example.com",
  password: "password123",
  name: "User 4"
)
puts "User 4 created."

user5 = User.create!(
  email: "me5@example.com",
  password: "password123",
  name: "User 5"
)
puts "User 5 created."

puts "Seeding Flights..."
flight1 = Flight.create!(
  airline: "Air France",
  depature: "New York",
  arrival: "Paris",
  price: 800
)
puts "Flight from New York to Paris created."

flight2 = Flight.create!(
  airline: "United Airlines",
  depature: "Chicago",
  arrival: "Tokyo",
  price: 1000
)
puts "Flight from Chicago to Tokyo created."

flight3 = Flight.create!(
  airline: "British Airways",
  depature: "London",
  arrival: "New York",
  price: 600
)
puts "Flight from London to New York created."

flight4 = Flight.create!(
  airline: "Qantas",
  depature: "Sydney",
  arrival: "London",
  price: 1200
)
puts "Flight from Sydney to London created."

flight5 = Flight.create!(
  airline: "Delta Airlines",
  depature: "Paris",
  arrival: "Chicago",
  price: 750
)
puts "Flight from Paris to Chicago created."

puts "Seeding Hotels..."
hotel1 = Hotel.create!(
  name: "Hotel Ritz",
  location: "Paris, France",
  price_per_night: 500
)
puts "Hotel 'Hotel Ritz' in Paris created."

hotel2 = Hotel.create!(
  name: "The Plaza",
  location: "New York, USA",
  price_per_night: 700
)
puts "Hotel 'The Plaza' in New York created."

hotel3 = Hotel.create!(
  name: "Shinjuku Granbell Hotel",
  location: "Tokyo, Japan",
  price_per_night: 150
)
puts "Hotel 'Shinjuku Granbell Hotel' in Tokyo created."

hotel4 = Hotel.create!(
  name: "The Dorchester",
  location: "London, UK",
  price_per_night: 800
)
puts "Hotel 'The Dorchester' in London created."

hotel5 = Hotel.create!(
  name: "Park Hyatt",
  location: "Sydney, Australia",
  price_per_night: 400
)
puts "Hotel 'Park Hyatt' in Sydney created."

puts "Seeding Infos..."
info1 = Info.create!(
  visa: "Visa required for all nationalities. Apply online or at the embassy.",
  safety: "Paris is generally safe, but be cautious in tourist-heavy areas.",
  destination_id: paris.id
)
puts "Info for Paris created."

info2 = Info.create!(
  visa: "Visa-free travel for many nationalities. Check the embassy website.",
  safety: "New York is a major city. Stay aware of your surroundings, especially at night.",
  destination_id: new_york.id
)
puts "Info for New York created."

info3 = Info.create!(
  visa: "Visa required for some nationalities. Apply at the Japanese embassy.",
  safety: "Tokyo is one of the safest cities in the world. Always stay alert in crowded places.",
  destination_id: tokyo.id
)
puts "Info for Tokyo created."

info4 = Info.create!(
  visa: "Visa-free for European travelers. Other nationalities can apply for a visa online.",
  safety: "London is generally safe. Avoid dark alleys at night.",
  destination_id: london.id
)
puts "Info for London created."

info5 = Info.create!(
  visa: "Visa-free travel for many nationalities. Check the official immigration website.",
  safety: "Sydney is safe, but always stay cautious in unfamiliar areas.",
  destination_id: sydney.id
)
puts "Info for Sydney created."

puts "Seeding Packages..."
package1 = Package.create!(
  name: "Paris Adventure",
  category: 1,
  flight_id: flight1.id,
  hotel_id: hotel1.id
)
puts "Package 'Paris Adventure' created."

package2 = Package.create!(
  name: "New York Explore",
  category: 2,
  flight_id: flight3.id,
  hotel_id: hotel2.id
)
puts "Package 'New York Explore' created."

package3 = Package.create!(
  name: "Tokyo Highlights",
  category: 3,
  flight_id: flight2.id,
  hotel_id: hotel3.id
)
puts "Package 'Tokyo Highlights' created."

package4 = Package.create!(
  name: "London Sightseeing",
  category: 4,
  flight_id: flight4.id,
  hotel_id: hotel4.id
)
puts "Package 'London Sightseeing' created."

package5 = Package.create!(
  name: "Sydney Adventure",
  category: 5,
  flight_id: flight5.id,
  hotel_id: hotel5.id
)
puts "Package 'Sydney Adventure' created."

puts "Seeding Trips..."
trip1 = Trip.create!(
  budget: 3000,
  start_date: Date.today + 10.days,
  end_date: Date.today + 15.days,
  user_id: user1.id,
  package_id: package1.id,
  destination_id: paris.id
)
puts "Trip for Paris created."

trip2 = Trip.create!(
  budget: 2500,
  start_date: Date.today + 5.days,
  end_date: Date.today + 10.days,
  user_id: user2.id,
  package_id: package2.id,
  destination_id: new_york.id
)
puts "Trip for New York created."

trip3 = Trip.create!(
  budget: 4000,
  start_date: Date.today + 15.days,
  end_date: Date.today + 20.days,
  user_id: user3.id,
  package_id: package3.id,
  destination_id: tokyo.id
)
puts "Trip for Tokyo created."

trip4 = Trip.create!(
  budget: 3500,
  start_date: Date.today + 20.days,
  end_date: Date.today + 25.days,
  user_id: user4.id,
  package_id: package4.id,
  destination_id: london.id
)
puts "Trip for London created."

trip5 = Trip.create!(
  budget: 5000,
  start_date: Date.today + 25.days,
  end_date: Date.today + 30.days,
  user_id: user5.id,
  package_id: package5.id,
  destination_id: sydney.id
)
puts "Trip for Sydney created."

puts "Seeding complete!"
