class Customer < ActiveRecord::Base
  has_many :tickets
  has_many :broadway_shows, through: :tickets

  def book_ticket(name , location, title, genre, seat_number, time, date)
    Ticket.create(name , location, title, genre, seat_number, time, date)
    #a customer can book/create a ticket

# - would you like to book a ticket?
# please enter the following information :
#name , #location, #title, #genre, seat_number, time, date


  end

  def choose_genres

    # A customer can select a title or a genre for the movie they want to see
  end
end

# # Please enter your name to change seat num
def change_seat_number (show_name, customer_id, seat_number)
  Tickets.all.select do |person|
    person.customer_id == show_name




    if customer_id.name == user_input
        puts "Your seat has been changed to seat #{seat_number}"
      else
        "Sorry, that #{seat_number} is unavailable"
        #how do i  measure seat numbers so that theres only a limited number being put out to be chosen from
      end
    end
  end

#find_by
#update
