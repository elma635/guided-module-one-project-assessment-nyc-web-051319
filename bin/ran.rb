#method to create/book a new ticket
require 'pry'
# require_relative '../app'
# require_relative '../config/environment'

#CREATE CUSTOMER
# - would you like to book a ticket?
# # please enter the following information :
def Customer.book_ticket(broadway_show, seat_number)
  show = BroadwayShow.find_by(title: broadway_show)
  if show
    new_ticket = Ticket.create(broadway_show_id: show.id, customer_id: self.id, seat_number: seat_number)
    puts "You did it!!! Your seat number is #{new_ticket.seat_number}"
  else
    puts "There is no show by this name :("
  end
end



#helper method
def find_ticket_by_show_name(title)
  Customer.tickets.find do |ticket|
    ticket.broadway_show.title == title
  end
end

# #Update ticket options
def update_ticket(show_name)
  my_ticket = Customer.find_ticket_by_show_name(show_name)
end


def cancel_ticket(title)
  my_ticket = find_ticket_by_show_name(title)
  if my_ticket
    my_ticket.destroy
  end
end

#method to READ & see all that's currently playing and or specific info

#Would you like to see all the shows that are currently playing?
#(y/n)
  def BroadwayShow.all_shows_currently_playing
    BroadwayShow.all.map do |show|
      show.title
  end
end


#Enter a show to find out the genre
  def genre(show)
    show.find_by(genre:show)
  if show.genre == show
    puts "The genre of this #{show} is #{show.genre}"
  else
      "The genre of this show is unavailable because it is not on queue to be playing at the time"
    end
  end


  def BroadwayShow.sold_out?
    max_size = 40
    if Customer.all.size < max_size
      puts "Tickets are still available!"
    else
      puts "Sorry, all sold out"
    end
  end #end of sold_out? method


  def BroadwayShow.show_in_theaters?(searched_show)
      BroadwayShow.all.find do |show|
        if show.title == searched_show
          if show.in_theaters ==  true
            puts "#{searched_show} will be playing in theaters!"
          else
            puts "Sorry! #{searched_show} will not be playing in theaters"
        end
      end
    end
  end





#METHOD TO UPDATE OR CHANGE SOMETHING ON YOUR TICKET
# Please enter your name to change seat num
  def change_seat_number(new_seat_number)
    Ticket.seat_number = new_seat_number
      Ticket.save
    end


  def Ticket.change_date_of_show(show_name, desired_date)
    Ticket.all.find do |ticket|
      if ticket.broadway_show.title == show_name
      ticket.update(date: desired_date)
    end
  end
end

#METHOD TO DELETE OR DESTROY


def cancel_ticket(title)
  my_ticket = find_ticket_by_show_name(title)
  if my_ticket
    my_ticket.destroy
  end
end
