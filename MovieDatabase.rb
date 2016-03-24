movies = Hash.new

movies = { LionKing: 5}

puts "Would you like to add, update, display or delete?"
choice = gets.chomp.downcase

case choice
when "add"
    puts "Which movie title?"
    title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
    else
        puts "That movie is already in the hash."
    end
when "update"
    puts "Give me a movie title."
    title = gets.chomp
    if movies[title].nil?
        puts "You are in error!"
    else
        puts "Give me a rating."
        rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "Which movie title?"
    title = gets.chomp
    if movies[title]
        puts "There is an error."
    else
        movies.delete(title)
    end
else
    "Error!"
end

