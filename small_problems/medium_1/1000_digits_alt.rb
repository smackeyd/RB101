require 'pry'

### WITH HASH ###
# def create_switches(num)
#   switches = {}
#   (1..num).each do |number|
#     switches[number] = false
#   end
#   switches
# end

# def on_switches(switches)
#   switches.select do |switch, position|
#     position == true
#   end.keys
# end

# def lights_on(num)
#   switches = create_switches(num)

#   (1..num).each do |round|
#     switches.each do |switch, position|
#       if switch % round == 0
#         switches[switch] = !position
#       end
#     end
#   end

#   on_switches(switches)
# end

### AS AN ARRAY ###
# def flip_switches(switches, num)
#   switches.each_with_index do |state, index|
#     if (index + 1) % num == 0
#       switches[index] = !state # returns true or false
#     end
#   end
#   switches
# end

# def grab_on_switches(switches)
#   switches.each_with_index do |state, index|
#     binding.pry
#     if state == true
#       switches[index] = (index + 1) # reassignment
#     else
#       switches[index] = nil # reassignment
#     end
#   end
#   switches.compact
# end

# def lights_on(num)
#   switches = Array.new(num, false)
#   1.upto(num) do |number|
#     switches = flip_switches(switches, number)
#   end

#   grab_on_switches(switches)
# end

# p lights_on(10)

### ANOTHER ALT ###
# def mathy_lights(num_lights)
#   lights_on = []
#   1.upto(num_lights**0.5)  do |light_no|
#     binding.pry
#     lights_on << light_no**2
#   end
#   lights_on
# end

# p mathy_lights(10)

### AMOTHER ONE ###
def lights_toggled(n)
  lights = Array.new(n, false)

  1.upto(n) do |multiple|
    lights.map!.with_index do |light, idx|
      light_num = idx + 1
      (light_num % multiple == 0) ? !light : light
    end
  end

  lights.map.with_index { |light, idx| idx + 1 if light == true }.compact
end

p lights_toggled(10)