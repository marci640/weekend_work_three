# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method



reservation = HotelReservation.new({customer_name: "Hazel", date: 3, room_number: 321})

result = reservation.customer_name
puts "TESTING the HotelReservation class..."
puts result 
puts 

if result == "Hazel"
  puts "PASS!"
else
  puts "F"
end
puts

result = reservation.room_number = 421
puts "TESTING the new room number:"
puts result
puts

if result == 421
  puts "PASS!"
else
  puts "F"
end
puts

result = reservation.add_a_fridge
puts "TESTING amenities:"
puts result
puts

if result == ["fridge"]
  puts "PASS!"
else
  puts "F"
end
puts

result = reservation.add_a_crib
puts "TESTING amenities:"
puts result
puts

if result == ["fridge", "crib"]
  puts "PASS!"
else
  puts "F"
end
puts

result = reservation.add_a_custom_amenity("pool")
puts "TESTING amenities:"
puts result
puts

if result == ["fridge", "crib", "pool"]
  puts "PASS!"
else
  puts "F"
end

