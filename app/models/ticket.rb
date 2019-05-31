class Ticket < ActiveRecord::Base
  belongs_to :broadway_show
  belongs_to :customer


  # Please enter your name to change seat num
  def change_seat_number(new_seat_number)
    self.seat_number = new_seat_number
    self.save
  end

#USING HELPER ^^ EDIT OF THAT
  def change_seat_number(name, new_seat_number)
    my_customer = Customer.all.find_by(name: name)
      my_customer.tickets.update(seat_number: new_seat_number)
        my_customer.save
  end

#----------------------

  def change_date_of_show(show_name, desired_date)
    # self.all.find do |ticket|
      if self.broadway_show.title == show_name
        self.update(date: desired_date)
      end
  end


#USING HELPER ^^^ EDIT OF THAT
    def self.change_date_of_show(show_name, desired_date)
      my_show = BroadwayShow.find_by(title: show_name)
        if my_show
           Ticket.update(date: desired_date)
        end
      end











end
