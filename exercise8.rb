def fastest_person(num) #number of people racing
    distance = []
    mins = []
    secs =[]
    speed =[]
    fastest_speed = 0
    fastest_person = 0
    tied = 0
    for i in 1..num    
        puts "How far did person #{i} run (in metres)?"
        distance[i] = gets.chomp.to_f
        puts "How long (in minutes) did person #{i} run take to run #{distance[i]} metres?"
        mins[i] = gets.chomp.to_f    
        secs[i] = mins[i] * 60
        speed[i] = distance[i]/secs[i]
        if speed[i] > fastest_speed
            fastest_speed = speed[i]
            fastest_person = i
        elsif speed[i] == fastest_speed
            tied = tied + 1        
        end
    end
    
    if tied == (num-1)
        return "Everyone tied at #{fastest_speed.round(3)} m/s"
    elsif fastest_speed > 0
        return "Person #{fastest_person} was the fastest at #{fastest_speed.round(3)} m/s"
    else
        return "Well done everyone!"
    end
    end
    
    
    