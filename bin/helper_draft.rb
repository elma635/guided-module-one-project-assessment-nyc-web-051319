
--------------------------------
#FIND(READ)
#helper method for searching shows?
  def find_show(searched_show)
    BroadwayShow.all.find do |show|
      show.title == searched_show
    end
  end


my_show = BroadwayShow.find_show(searched_show)


  #Enter a show to find out the genre

  #WITH HELPER
    def find_show_genre(searched_show)
      my_show = BroadwayShow.find_show(searched_show)
        if my_show.genre == searched_show
      puts "The genre of #{searched_show} is #{my_show.genre}"
    else
        "The genre of this show is unavailable because it is not on queue to be playing at the time"
      end
    end

#OG
    def find_show_genre(show)
      show.find_by(genre: show)
    if show.genre == show
      puts "The genre of this #{show} is #{show.genre}"
    else
        "The genre of this show is unavailable because it is not on queue to be playing at the time"
      end
    end


#WITH  HELPER
    def BroadwayShow.show_in_theaters?(searched_show)
        my_show = BroadwayShow.find_show(searched_show)
            if show.in_theaters ==  true
              puts "#{searched_show} will be playing in theaters!"
            else
              puts "Sorry! #{searched_show} will not be playing in theaters"
          end
        end


#OG
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



----------------------------------
#FIND(READ), UPDATE(UPDATE), DELETE(DESTROY)

#helper method
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
  my_ticket = find_n_update_ticket_by_show_name(title)
  if my_ticket
    my_ticket.destroy
  end
end
