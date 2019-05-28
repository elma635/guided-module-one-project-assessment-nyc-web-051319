class Ticket < ActiveRecord::Base
  belongs_to :broadway_show
  belongs_to :customer


#Update ticket options
  # def update_ticket
  #
  #
  #
  # end

# def update_ticket
#
# case #when user_input = 1
# when #customer selects 1
#
# end






def change_time(user_input, preferred_time)

end

def change_date(user_input, preferred_date)

end

def cancel_ticket(user_input, ticket)

end
  #list of options on which one customer would like to do to their ticket

  # - change seat number
  #- change number of attendees
  # - change time
  # - change date
  # - can cancel/delete their ticket
  #
