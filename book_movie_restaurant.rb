# Exercise 1
# Think of a book, a film, a recipe, and a song. Store the titles of these in variables. 
# Ask the user if they enjoy 1. reading books 2. watching films 3.trying new recipes. 
# If they answer yes to books, display a message recommending the book to them. 
# If they answer no to books but yes to films and recipes, recommend them the song. 
# If they answer yes to only films, recommend the film. 
# If they say yes to only recipe, recommend the recipe. 
# If they answer no to all three, recommend a good restaurant instead.
book = "The Blade Itself by Joe Abercrombie"
song = "White Wedding by Billy Idol"
recipe = "Stir Fry Chicken"
film = "Lord of the Rings by Peter Jackson"
restaurant = "Ba Li Laffa"
print "Do you enjoy reading books?(yes or no): "
book_question = gets.chomp
print "Do you enjoy watching films?(yes or no): "
film_question = gets.chomp
print "Do you enjoy trying new recipes?(yes or no): "
recipe_question = gets.chomp
if book_question == "yes"
    puts "I recommend #{book}. It's a good book."
elsif film_question == "yes" && recipe_question == "yes"
    puts "I recommend #{song}. It's a good song."
elsif film_question == "yes"
    puts "I recommend #{film}. It's a good film."
elsif recipe_question == "yes"
    puts "I recommend #{recipe}. It's a good recipe."
elsif book_question == "no" && film_question == "no" && recipe_question == "no"
    puts "I recommend #{restaurant}. It's a good restaurant."
end




