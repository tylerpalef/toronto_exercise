def venue_search(venues_array)
# def is creating the method
# venue_search is the name of the methods
# (venues_array) is the argument.... so the name of the array

  possible_venues = []
# We are returning the results of this method as a blank array
  venues_array.each do |venue|
# .each do looks through the entire array argument
# |venue| is what we are naming the array
    if venue[:wheelchair_accessible] == true && venue[:capacity] > 150 && venue[:city] == "Toronto"
# Searching through the |venue| with venue and selecting the key's I want with their value
      possible_venues << venue
# This is to shovel the venues that fit into our new array
    end
  end
  return possible_venues
end

venues = [
{ address: "123 Main Street", city: "Toronto", wheelchair_accessible: true, capacity: 100 },
{ address: "567 Centre Street", city: "Toronto", wheelchair_accessible: false, capacity: 400 },
{ address: "9B Ontario Street", city: "Montreal", wheelchair_accessible: true, capacity: 1000 },
{ address: "56 Road Avenue", city: "Ottawa", wheelchair_accessible: true, capacity: 650 },
{ address: "938 Avenue Way East", city: "Toronto", wheelchair_accessible: false, capacity: 90 },
{ address: "34 Main Street West", city: "London", wheelchair_accessible: false, capacity: 300 },
{ address: "44 Quebec Road", city: "Toronto", wheelchair_accessible: true, capacity: 200 },
{ address: "10 Spruce Avenue Ouest", city: "Montreal", wheelchair_accessible: false, capacity: 525 }
]

event_venues = venue_search(venues)
# This is to get the results 

  # Loop thrugh event venues matched and print each out
  event_venues.each do |venue|
    p venue[:address]
  end
