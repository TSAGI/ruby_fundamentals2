students = { "students" => 0,
    :cohort1 => 34, 
    :cohort2 => 42, 
    :cohort3 => 22 
}

def displayHash(hash)
arg = ""
  for key, value in hash 
    if value == 0 then 
        arg = key
    else
        print "#{key}: #{value.to_i} #{arg}\n"         
    end
  end  
end

displayHash(students)

students[:cohort4] = 43
students.each {|k,v| if v != 0 then puts k end }

students.each {|key, value| students[key] = value.to_i * 1.05 } 
    
displayHash(students)

students.delete(:cohort2)

displayHash(students)
total = 0
students.each {|key, value| total += value.to_i}
puts total
  
staff = { "staff members" => 0,
    :cohort1 => 43,
    :cohort2 => 24,
    :cohort3 => 22 
  }

displayHash(staff)
