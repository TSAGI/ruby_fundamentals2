#Exercise 1
a = [250, 7.95, 30.95, 16.50]
b = [23, 54, 656, 34, 67.9]
def sum(arr)
    total = 0
    arr.each do |val|
        total += val
    end
    return total
end

puts sum(a)
puts sum(b)

#Exercise 2
grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
grocery_list.each do |val|
    print "* #{val}\n"
end
grocery_list << "rice"
grocery_list.each do |val|
    print "* #{val}\n"
end
puts grocery_list.length
if grocery_list.include?("bananas") then
    puts "You don't need to pick up bananas."
else
    puts "You need to pick up bananas."
end
puts grocery_list[1]
grocery_list.sort!
grocery_list.each do |val|
    print "* #{val}\n"
end
grocery_list.delete("salmon")
grocery_list.each do |val|
    print "* #{val}\n"
end
