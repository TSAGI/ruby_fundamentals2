
digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']
hb = ['echad', 'shtaym', 'shalosh', 'arba', 'chamesh', 'shesh', 'sheva', 'shmona', 'teisha', 'eser']
# Write the necessary code to transform these arrays into a hash with the 
# following format:

# {
#   1: {french: 'un', english: 'one'},
#   2: {french: 'deux', english: 'two'},
#   3: {french: 'trois', english: 'three'},
#   ...
#   9: {french: 'neuf', english: 'nine'}
# }
#Consider adding translations for any other languages you speak, using the same format.
output = {}
(0...digits.length).each {|i|
   output["#{digits[i]}:"] = {
                    "french:" => fr[i],
                    "english:" => en[i],
                    "hebrew:" => hb[i]
                    }
}
puts output

