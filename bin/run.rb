require_relative '../config/environment'
require '../app'
require 'pry'
c1 = Customer.create(name:"Elma")

binding.pry
def start
  greet
  main_menu
end

def greet
  puts "Hello, user welcome to my broadway_shows app!"
  puts "Please enter your name"
  customer_name = gets.chomp
  user_name = Customer.new(name:customer_name)
end



def main_menu
puts "\n"
puts "please choose an option:"
puts "1. See all shows that are currently playing"
puts "2. Would you like to update your ticket?"
puts "3. Enter a show name to find out the genre"
puts "4. Please enter your name to change seat number"
puts "5. Enter a show name to see if it is in theaters"
response = gets.chomp

case response
when 1
  BroadwayShow.all_shows_currently_playing

when 2
     puts "1. book new ticket"
        #method #Ticket.create(customer: self, broadway_show: broadway_show)
          "2. find ticket by show name"


          "3. cancel ticket"

          "4. change your seat_number"
              #Method to be placed here -- #change_seat_number(new_seat_number)

            "5. Are the tickets for the show sold out?"
      #else
        #LOOPS BACK INTO MAIN MENU
        "Choose an option from the main menu"
      when 3
        puts "Enter a show name to find out the genre of your show!"




      end
    end





 #list of options on which one customer would like to do to their ticket

 # - change seat number
 #- change number of attendees
 # - change time
 # - change date
 # - can cancel/delete their ticket
 #









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
