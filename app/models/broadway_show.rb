

class BroadwayShow < ActiveRecord::Base
  has_many :tickets
  has_many :customers, through: :tickets


  #Would you like to see all the shows that are currently playing?
  #(y/n)
  def self.all_shows_currently_playing
    self.all.map do |show|
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


  def self.sold_out?
    max_size = 40

    if Customer.all.size < max_size
      puts "Tickets are still available!"
    else
      puts "Sorry, all sold out"
    end
  end #end of sold_out? method


  def self.show_in_theaters?(searched_show)
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




end #end of class
