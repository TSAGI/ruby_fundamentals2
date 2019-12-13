my_dogs = [
    { :name => 'Ralph', :position => 5 },
    { :name => 'Cindy', :position => 8 },
    { :name => 'Jade', :position => 11 },
  ]
her_dogs = [
    { :name => 'Rex', :position => 15 },
    { :name => 'Felix', :position => 12 },
    { :name => 'Grover', :position => 4 },
  ]

def get_absent_dogs(hashArray)    
  absent_dogs = Marshal.load(Marshal.dump(hashArray))  
  absent_dogs.delete_if{|h| h[:position] < 11}    
  return absent_dogs
end

def call_absent_dogs(hashArray)
    absent_dogs = get_absent_dogs(hashArray)
    absent_dogs.map {|x| puts "Come back, #{x[:name]}!"}
end

call_absent_dogs(my_dogs)
call_absent_dogs(her_dogs)

def chase_squirrel(hashArray)
    newArray = hashArray.map {|x| x[:position] + 5 }    
end
 
def return_dogs(hashArray)    
   newArray = hashArray.map! {|x| x[:position] = 0}   
end

  
