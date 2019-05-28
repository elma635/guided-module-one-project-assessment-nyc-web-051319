class BroadwayShow < ActiveRecord::Base
  has_many :customers
  has_many :tickets, through: :customers

  def self.show_title
    self.all.map do |show| show.title
  end
end

#Enter a show to find out the genre
  def self.show_genre_for_show(user_input)
    self.all.map do |show|
      #show.all.map |s|
    end
  end

  def self.all_shows_currently_playing?(user_input)
    #would you like to see what's currently playing?
    self.all.map do |show|
      if show.in_theaters? == user_input
        puts "Yes, #{user_input.title} playing in theaters"
      else
        puts "No, #{user_input.title} not playing in theaters"
      end
    end
  end
end
