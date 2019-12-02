#Exercise 1
#------------
def double(my_number)
    return my_number * 2
end

#Exercise 2
#-------------
def negative?(num)
    if num < 0 then
        return true
    else
        return false
    end
end

#Exercise 3
#--------------
def is_even?(num)
    if num % 2 == 0
        return true
    else
        return false
    end
end

#Exercise 4
#---------------
def eight_string?(strng)
    if strng.length < 8
        return false
    else
        return true
    end 
end

#Exercise 5
#--------------
def greet_backwards(name)
    return "Hello, #{name.reverse * 2}! Welcome home."
end

#Exercise 6
#--------------
