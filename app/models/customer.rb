class Customer < ActiveRecord::Base
  has_many :tickets
  has_many :broadway_shows, through: :tickets



  # - would you like to book a ticket?
  # # please enter the following information :
  # #name , #location, #title, #genre, seat_number, time, date
def self.book_ticket(customer_name)
  if Customer.all.map do |person| person.name == customer_name



  end
end


def self.book_ticket(broadway_show)
    counter += 1
      while BroadwayShow.all.map do |show| show.title == broadway_show




    #if the broadway_show name matches, set a new ticket for that show -- if the customer wants more than 1 ticket, puts "Your order is complete for x amount of  tix"
  end
end



#(broadway_show_id, customer_id)


#BroadwayShow.ids --> returns all broadway_show ids


#  #<Ticket:0x00007f98ccd6c6a0 id: 2, broadway_show_id: 7, customer_id: 7>,
#
# tix2 = Ticket.create(broadway_show_id: 7, customer_id: 7)
#
# tix2
# => #<Ticket:0x00007f98cd177768 id: 7, broadway_show_id: 7, customer_id: 7>
#


# #Update ticket options
  def self.update_ticket(show_name)
    BroadwayShow.find_by(name:"#{title}")
      if "#{title}" == show_name





# new_tix = Ticket.create(broadway_show_id:1, customer_id:4)
# =>=> #<Ticket:0x00007fd1f4251cc8 id: 8, broadway_show_id: 1, customer_id: 4>
#
# so I see that this adds to the primary key of ticket but  how do i match customer name with a new ticket


  end

# # def update_ticket
# #
# # case #when user_input = 1
# # when #customer selects 1
# #
# # end
#
#
#
#
#
#
# def change_time(user_input, preferred_time)
#
# end
#
# def change_date(user_input, preferred_date)

end

def cancel_ticket()

end
  #list of options on which one customer would like to do to their ticket

  # - change seat number
  #- change number of attendees
  # - change time
  # - change date
  # - can cancel/delete their ticket
  #










end
