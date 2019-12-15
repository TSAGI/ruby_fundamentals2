
   gameData = [ {
    "csGo"=>[
        { "name"=> 'Peter', "location"=> 'Neverland', "status"=> 'expert' },
        { "name"=> 'Sree', "location"=> 'Toronto', "status"=> 'Awesone' },
        { "name"=> 'Sandra', "location"=> 'Neverland', "status"=> 'newbie' },
        { "name"=> 'Elton', "location"=> 'Mumbai', "status"=> 'Awesome' },
        { "name"=> 'Kmen', "location"=> 'Neverland', "status"=> 'newbie' },
        { "name"=> 'Evlyn', "location"=> 'Zurich', "status"=> 'expert' },
        { "name"=> 'Kiwi', "location"=> 'LA', "status"=> 'expert' }
    ],
  },
  
  {"pubG"=>[
      { "name"=> 'Peter', "location"=> 'Toronto', "status"=> 'expert' },
      { "name"=> 'Sree', "location"=> 'Alberta', "status"=> 'Awesone' },
      { "name"=> 'Sandra', "location"=> 'Neverland', "status"=> 'newbie' },
      { "name"=>'Elton', "location"=> 'New Delhi', "status"=> 'Awesome' },
      { "name"=> 'Kmen', "location"=> 'Neverland', "status"=> 'newbie' },
      { "name"=> 'Evlyn', "location"=> 'Zurich', "status"=> 'expert' },
      { "name"=> 'Kiwi', "location"=> 'Mexico', "status"=> 'expert' }
  ]}
]

#result    
#   [
#     {"name"=> 'Peter', "games"=>[{"name":'csGo', "status":'expert'},{"name":'pubG', "status":'expert'}], "location"=>['Toronto']}
#   ]
result = []
list_of_names = []
games = []
location = []
gameData.each {|element| element.each {|hashTitle, hash| hash.each {|hashElement|      
  list_of_names.push(hashElement["name"])
  list_of_names.uniq!  
  }}}

for name in list_of_names
  gameData.each {|element| element.each {|hashTitle, hash| hash.each {|hashElement|   
      if hashElement["name"] == name then          
        games.push({"name" => hashTitle, "status" => hashElement["status"]})
        location.push(hashElement["location"])      
      end    
  }}}
  temp_hash = { "name" => name, "games" => games, "location" => location }
  result << temp_hash
  games = []
  location = []
end
  
print result
puts
  