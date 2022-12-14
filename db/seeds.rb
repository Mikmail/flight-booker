airports = {:NYC => "New York",
            :SFO => "San Francisco",
            :LON => "London",
            :LPL => "Liverpool",
            :ARN => "Stockholm",
            :BER => "Berlin",
            :OSL => "Oslo"
}

airports.each do |k, v|
  Airport.create(airport_code: k, city: v)
end

all_airports = Airport.all


index = airports.length - 1

500.times do
  departure_airport = all_airports[rand(0..index)].id
  destination_airport = all_airports[rand(1..index)].id
  Flight.create(date: rand(4.days).seconds.from_now,
                departure_airport_id: departure_airport,
                destination_airport_id: destination_airport,
                price: rand(200..1000)) if departure_airport != destination_airport
end