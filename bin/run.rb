require_relative '../config/environment'
require '../app'
require 'pry'

c1 = Customer.create(name:"Elma")

def start
  greet
  main_menu
end

def greet
  puts "Hello, welcome to the broadway show app!"
  puts "Please enter your name to get started"
  current_user = gets.chomp
  user_name = Customer.new(name:customer_name)
end


#MAIN MENU
# - seen by user immediately
# - select an option to use the interface

  def main_menu(current_user)
    puts "*****************************************************"
    puts "Please choose an option below:"
    puts " "
    puts "1. See all shows that are currently playing"
    puts "2. Update your ticket"
    puts "3. Enter a show name to find out the genre of your show!"
    puts "4. Enter a show name to see if its playing in theaters nearby"
    puts "5. Exit"

      response = gets.chomp
  case response
  when "1"
      BroadwayShow.all_shows_currently_playing

  when "2" #when this is chosen, redirect to another menu

  when "3"
        puts "Enter a show name to find out the genre of your show!"


  when "4"
        puts "Enter a show name to see if its playing in theaters nearby"

  when "5"
        close_app

  else
        puts "Please choose a valid option from the main menu"
          main_menu(current_user)
      end
    end


    def close_app
      abort("Enjoy your show!")
    end

    def change_confirmed
      puts "Your changes have been made!"
      puts " "
      puts "*****************************************************"
      puts " "

    end



 #list of options on which one customer would like to do to their ticket

 # - change seat number
 # - change time
 # - change date
 # - can cancel/delete their ticket
 #

#user has to select options for what they want to update/change about their ticket
#When 2

def updates_menu(current_user)
    puts "Please choose one"
    puts " "
    puts "1. Book new ticket"
    #method #Ticket.create(customer: self, broadway_show: broadway_show)
    puts "2. Find ticket by show name"
    puts "3. Cancel ticket"
    puts "4. Change your seat number"
          #Method to be placed here -- #change_seat_number(new_seat_number)
    puts "5. Change date of show on your ticket"

    puts "6. Are the tickets for the show sold out?" #maybe
    puts "7. Exit"
  #else
    #LOOPS BACK INTO MAIN MENU
    #"Choose an option from the main menu"


      #GO OVER THESE & SEE IF YOU'RE ASKING FOR THE RIGHT THINGS FROM USER INPUT
    response = gets.chomp
  case response
  when "1"
      puts "Please a show title and seat number that you would like the ticket to be booked for"

  when "2"
      puts "Please enter a show title to find a ticket"

  when "3"
      puts "Please enter a show title to cancel your ticket"

  when "4"
      puts "Please enter a ticket  " #??????????

  when "5"
      puts "Please enter a date you would like to change your show to"

  when "6"


end





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
