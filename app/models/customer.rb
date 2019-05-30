require 'pry'
class Customer < ActiveRecord::Base
  has_many :tickets
  has_many :broadway_shows, through: :tickets

  # - would you like to book a ticket?
  # # please enter the following information :
  def self.book_ticket(broadway_show, seat_number)
    show = BroadwayShow.find_by(title: broadway_show)
    if show
      new_ticket = Ticket.create(broadway_show_id: show.id, customer_id: self.id, seat_number: seat_number)
      puts "You did it!!! Your seat number is #{new_ticket.seat_number}"
    else
      puts "There is no show by this name :("
    end
  end

  #helper method
  def self.find_ticket_by_show_name(title)
    self.tickets.find do |ticket|
      ticket.broadway_show.title == title
    end
  end


# #Update ticket options
  def update_ticket(show_name)
    my_ticket = self.find_ticket_by_show_name(show_name)

  end


  def cancel_ticket(title)
    my_ticket = find_ticket_by_show_name(title)
    if my_ticket
      my_ticket.destroy
    end
  end



end
