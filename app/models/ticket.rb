class Ticket < ActiveRecord::Base
  belongs_to :broadway_show
  belongs_to :customer


  # Please enter your name to change seat num
  def change_seat_number(new_seat_number)
    self.seat_number = new_seat_number
        binding.pry
    self.save
  end

  def self.change_date_of_show(show_name, desired_date)
    self.all.find do |ticket|
      if ticket.broadway_show.title == show_name
        ticket.update(date: desired_date)
      end
    end
  end


end


# # Please enter your name to change seat num
# def change_seat_number(new_seat_number)
#   self.seat_number = new_seat_number
#       binding.pry
#   self.save
# end
#
# def self.change_date_of_show(show_name, desired_date)
#   self.all.find do |ticket|
#     if ticket.broadway_show.title == show_name
#       ticket.update(date: desired_date)
#     end
#   end
# end
