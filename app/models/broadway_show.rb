class BroadwayShow < ActiveRecord::Base
  has_many :customers
  has_many :tickets, through: :customers


#Would you like to see all the shows that are currently playing?
#(y/n)
def self.all_shows_currently_playing
  self.all.map do |show|
    show.title
  end
end

#Enter a show to find out the genre
def self.genre(show_name)
  self.all.map do |show|
    if show.title == show_name
      puts "The genre of this #{show_name} is #{show.genre}"
    else
      "The genre of this show is unavailable because it will not be playing"
  end
end



def self.sold_out?
max_size = 40
if Customer.all.size < max_size
  puts "Tickets are still available!"
else
  puts "Sorry, all sold out"
  end
end


# Please enter your name to change seat num
def self.change_seat_number(show_name)
  self.all.map do |seat|
    seat.seat_number == show_name


      self.find_by(title:"#{show_name}") #can we update seat number after they put in the show name?
#takes in the show name to update the seat number
end




# def change_seat_number (show_name, customer_id, seat_number)
#   Tickets.all.select do |person|
#     person.customer_id == show_name
#
#
#
#
#     if customer_id.name == user_input
#         puts "Your seat has been changed to seat #{seat_number}"
#       else
#         "Sorry, that #{seat_number} is unavailable"
#         #how do i  measure seat numbers so that theres only a limited number being put out to be chosen from
#       end
#     end
#   end

#find_by
#update

#Enter a show name to see if it is in theaters
def show_in_theaters?(show_name)
    BroadwayShow.all.map do |show|
      show.in_theaters == show_name
        if show.in_theaters == true
          puts "#{show_name} will be playing in theaters!"
        else
          puts "Sorry! #{show_name} will not be playing in theaters"
          end
        end
      end
    end
  end
end






#
# end
#   counter += 2
#   while seat_number =

#
#   def self.show_genre_for_show(user_input)
#     self.all.map do |show|
#       #show.all.map |s|
#     end
#   end
#
#   def self.all_shows_currently_playing?(user_input)
#     #would you like to see what's currently playing?
#     self.all.map do |show|
#       if show.in_theaters? == user_input
#         puts "Yes, #{user_input.title} playing in theaters"
#       else
#         puts "No, #{user_input.title} not playing in theaters"
#       end
#     end
#   end
# end
\
