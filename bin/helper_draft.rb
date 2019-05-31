require "pry"
require_relative '../config/environment'

# --------------------------------
#FIND(READ)
#helper method for searching shows?
  def find_show(searched_show)
    BroadwayShow.all.find do |show|
      show.title == searched_show
    end
  end

#^ probably dont need this bc of the association methods

# my_show = BroadwayShow.find_show(searched_show)


  #Enter a show to find out the genre

  #WITH HELPER #but dont need it bc we used association methods
    def find_show_genre(searched_show)
      found_show = BroadwayShow.find_by(title: searched_show)
    if show.title == searched_show
      puts "The genre of #{searched_show} is #{show.genre}"
    else
        "The genre of this show is unavailable because it is not on queue to be playing at the time"
      end
    end

#
# #OG
#     def find_show_genre(show)
#       show.find_by(genre: show)
#     if show.genre == show
#       puts "The genre of this #{show} is #{show.genre}"
#     else
#         "The genre of this show is unavailable because it is not on queue to be playing at the time"
#       end
#     end

#EXAMPLE
# "Please enter a show name"
#   user_response = gets.chomp
#   find_genre_by_show(user_response)

    def find_genre_by_show(show)
      found_show = BroadwayShow.find_by(title: show)
       puts found_show.title
          puts "Your #{found_show.title}'s is #{found_show.genre}"
    end

#WITH  HELPER
    def show_in_theaters?(searched_show)
        found_show = BroadwayShow.find_by(title: searched_show)
      if found_show.in_theaters ==  true
          puts "#{searched_show} will be playing in theaters!"
      else
          puts "Sorry! #{searched_show} will not be playing in theaters"
        end
    end

# find_show(searched_show)



# #OG
#     def BroadwayShow.show_in_theaters?(searched_show)
#         BroadwayShow.all.find do |show|
#           if show.title == searched_show
#             if show.in_theaters ==  true
#               puts "#{searched_show} will be playing in theaters!"
#             else
#               puts "Sorry! #{searched_show} will not be playing in theaters"
#           end
#         end
#       end
#     end


# ----------------------------------
#FIND(READ), UPDATE(UPDATE), DELETE(DESTROY)

#helper method
    def find_n_update_ticket_by_show_name(title)
      Customer.tickets.find do |ticket|  #Customer.first.tickets bc you need to call it on someone & ask for their ticket
        ticket.broadway_show.title == title
      end
    end


    #GET ALL THE INFO ON YOUR TICKET BY ENTERING YOUR NAME
      def find_ticket_by_name (name)
        found_customer_ticket = Customer.find_by(name: name).tickets
      end


    #   def find_n_update_ticket_by_show_name(title)
    #     found_ticket_by_show = BroadwayShow.find_by(title: title).tickets
    #         #want to update date or seat number #FIX!!!
    #         if found_ticket_by_show == title
    #           found_ticket_by_show.update(#date, time, what?)
    #
    #           Customer.tickets.find do |ticket|  #Customer.first.tickets bc you need to call it on someone & ask for their ticket
    #       ticket.broadway_show.title == title
    #     end
    #   end
    # end

    #og ^ new
    def find_n_update_ticket_by_show_name(title)
      Customer.tickets.find do |ticket|  #Customer.first.tickets bc you need to call it on someone & ask for their ticket
        ticket.broadway_show.title == title
      end
    end

     #Update ticket options #what is this for??
    def update_ticket(show_name)
      my_ticket = Customer.find_ticket_by_show_name(show_name)
    end



    def cancel_ticket(title)
      binding.pry
      found_ticket_by_title = BroadwayShow.find_by(title: title).tickets
      if found_ticket_by_title
        found_ticket_by_title.destroy
      end
    end

      binding.pry
      puts "lol"


        #write a method where the user has the option to select which ticket they want to update
        #Please select the ticket you would like to  update


        def find_ticket_by_name(name)
          found_customer_ticket = Customer.find_by(name: name).tickets
        end
