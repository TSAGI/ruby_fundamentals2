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
    hashArray.select {|x| x[:position] > 10} 
end

def call_absent_dogs(hashArray)    
    get_absent_dogs(hashArray).map {|x| puts "Come back, #{x[:name]}!"}
end

call_absent_dogs(my_dogs)
call_absent_dogs(her_dogs)

def chase_squirrel(hashArray)
    hashArray.map! {|x| x[:position] += 5; x }    
end

def return_dogs(hashArray)    
   hashArray.map! {|x| x[:position] = 0; x}   
end


