# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 
# The Tv class will have the attributes: power, volume, and channel. 
# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume ,:channel

  def initialize(power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end 
end 


class Remote
  attr_accessor :tv

  def initialize(tv)
    @tv = tv
  end 

  def toggle_power 
    if tv.power == "on"
      tv.power = "off"
    else
      tv.power = "on"
    end
  end 

  def increment_volume 
    tv.volume += 1
  end 

  def decrement_volume 
    tv.volume -= 1
  end

  def set_channel(integer)
    tv.channel = integer
  end 
end 


samsung = Tv.new("off", 26, 42)
remote = Remote.new(samsung)


result = samsung.power
puts "TESTING the TV class..."
puts result 
puts 

if result == "off"
  puts "PASS!"
else
  puts "F"
end
puts



result = remote.toggle_power
puts "TESTING the toggle_power method:"
puts result
puts

if result == "on"
  puts "PASS!"
else
  puts "F"
end
puts



result = remote.increment_volume
puts "TESTING the increment_volume method:"
puts result
puts

if result == 27
  puts "PASS!"
else
  puts "F"
end
puts



result = remote.decrement_volume
puts "TESTING the decrement_volume method:"
puts result
puts

if result == 26
  puts "PASS!"
else
  puts "F"
end
puts



result = remote.set_channel(14)
puts "TESTING the set_channel method:"
puts result
puts

if result == 14
  puts "PASS!"
else
  puts "F"
end
puts

