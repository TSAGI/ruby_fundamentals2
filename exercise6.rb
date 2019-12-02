print "Enter the temperature in Fahrenheit: "
temp = gets.chomp.to_f

def f_to_c(temperature)   
    celcius = (temperature - 32) * (5/9.0)
    return celcius.round(1)
end

puts "The temperature you entered is #{temp}°F."
puts "This is #{f_to_c(temp)}°C."

