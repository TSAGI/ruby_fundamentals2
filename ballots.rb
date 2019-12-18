ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
    {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
    {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
    {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
    {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
    {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]
    
# Each hash represents a voting ballot, with three names in 1st, 2nd, and 3rd
#  place. A first place vote is worth 3 points, a 2nd place vote is worth 
#  2 points, and a 3rd place vote is worth 1 point.

# For example, the first ballot {1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'}
#  shows that this voter chose Smudge for first place, Tigger for 2nd, 
#  and Simba for 3rd. Smudge would be awarded 3 points, 
#  Tigger would be awarded 2 points, and Simba would be awarded 1 point.

# Tally up all the votes and determine who won.

contestants = []
winners = {}
ballots.each {|hash| hash.each {|key, value| contestants.push(value)}}
contestants.uniq!.sort!

(0...contestants.length).each {|i| winners[contestants[i]] = 0}
    tally = 0
    for i in (0...contestants.length)
    ballots.each {|vote| vote.each {|key, value| 
        if value == contestants[i]
            if key == 1
                tally += 3
            elsif key == 2
                tally += 2
            elsif key == 3
                tally += 1
            end
        end
        }}
    winners[contestants[i]] = tally 
    tally = 0
end

winners.sort_by(&:last).reverse
puts "The winner is #{winners.first.first} with #{winners.values.first} votes."