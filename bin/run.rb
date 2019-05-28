require_relative '../config/environment'


puts "Hello, user welcome to my app:"
puts "\n"
puts "please choose an option:"
puts "1. See Shows"
puts "2. See Account"
response = gets.chomp
case response
when "See Shows"
  BroadwayShow.all.each do |bs|
    puts "- " + bs.title
  end
end




 # BroadwayShow.show_title
 # BroadwayShow.show_genre
 # BroadwayShow.all_shows_currently_playing? #need to fix up










#QUESTIONS TO  ASK
#how should the format of the seed files be?
#how do i list my options like genre, or titles, or seat numbers

#how do i know which method is supoosed to go  where
#where to require pry

#methods I want my customer to do
#CREATE
# A customer can book/ create a ticket for a particular b-way show.
#A customer can select a title or a genre for the movie they want to see



#READ
#A customer can  enter a :location and be suggested the nearest  b-way show playing
#A customer can check whether show is currently playing in theaters or not


#UPDATE
#A customer can update/edit their ticket info like change num of people, change date, change time, change seat#

#A customer can change their location on the ticket info to go  to another viewing

#DELETE
#A customer can cancel or delete their showtime ticket.
