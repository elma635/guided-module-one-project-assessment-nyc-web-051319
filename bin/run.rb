require_relative '../config/environment'
require 'pry'


class CLI

    def start
      greet
      main_menu
    end

    def self.greet
      puts "Hello, welcome to the broadway show app!"
      puts "Please enter your name to get started"
      name = gets.chomp
      @current_user = Customer.find_or_create_by(name: name)
      menu_runner(@current_user)
    end


  #MAIN MENU
  # - seen by user immediately
  # - select an option to use the interface
    def self.menu_runner(current_user)
      while true
        main_menu(current_user)
      end
    end

    def self.main_menu(current_user)
      puts "*****************************************************"
      puts "Please choose an option below:"
      puts " "
      puts "1. See a list of all the shows that are currently playing"
      puts "2. Update one of your tickets"
      puts "3. Find shows booked under name"
      puts "4. See if a show is playing in theaters"
      puts "5. To find out the genre of your show"

      puts "6. Exit"

      response = gets.chomp
    case response
    when "1"
        puts "To see a list of all shows currently playing"
              BroadwayShow.all_shows_currently_playing

    when "2" #when this is chosen, redirect to another menu
      puts updates_menu(current_user)
    when "3"
          puts "Find shows booked under your name"
            #person_name = gets.chomp
            #current_user.tickets.map{|tic| tic.broadway_show_id}
              array = current_user.tickets.map{|tic| tic.broadway_show_id}
              puts array.map{|id| BroadwayShow.find(id).title}

              # @current_user = elma
              # .tickets.all

    when "4"
      puts "Please enter a show name to see if it's playing in theaters"
            #BroadwayShow.show_in_theaters?(gets.chomp)
            title_name = gets.chomp
            show_in_theaters?(title_name)

    when "5"
      puts "Please enter a show to find out the genre(s)"
          title_name = gets.chomp
            puts BroadwayShow.find_by(title:"#{title_name}").genre
            spacer(2)
    when "6"
          close_app
    else
          puts "Please choose a valid option from the main menu"
            main_menu(current_user)
    end
  end

    def self.close_app
      abort("Enjoy your show!")
    end

    def change_confirmed
      puts "Your changes have been made!"
      puts " "
      puts "****************************************************************************************************"
      puts " "

    end


  def self.updates_menu(current_user)
    puts "Please choose one of the options to make a change to your booking"
    puts " "
    puts "1. Book new ticket"
    puts "2. Cancel ticket"
    puts "3. Change your seat number"
    puts "4. Change date of show on your ticket"
    puts "5. Back to main menu"
    puts "10. Exit"


    response = gets.chomp
  case response
  when "1"
      puts "Please enter show title that you would like the ticket to be booked for:"
        show_title = gets.chomp

      puts "Please enter seat number that you would like the ticket to be booked for:"
      seat_number = gets.chomp

      puts "Please enter date (dd/mm/yyyy) that you would like the ticket to be booked for:"
      date = gets.chomp

          new_ticket = Ticket.create(date:"#{date}", seat_number: "#{seat_number}")
          current_user.tickets << new_ticket
          new_ticket.broadway_show_id = BroadwayShow.find_by(title: "#{show_title}").id
          # puts new_ticket
          puts "Your changes have been made!"
          #Customer.book_ticket(broadway_show, seat_number, date)


  when "2"
      puts "Please enter a show name to cancel your ticket"
            cancel_ticket(gets.chomp)
  when "3"
      puts "Please select the ticket(s) you would like to change by entering the broadway show id, and new seat number"
      puts "****************************************************************************************************"
      spacer(2)

    #step 1
      puts "Here are the shows you have tickets to:"
      array = current_user.tickets.map{|tic| tic.broadway_show_id}
      puts array.map{|id| BroadwayShow.find(id).title}


      #step 2
      puts "Which show do you want to change the seat number for?"
      show_title = gets.chomp

      customers_show = current_user.broadway_shows.find_by(title: show_title)

      #step 3 /final method
      puts "Please enter the seat number you wish to change to:"
      new_seat_number = gets.chomp.to_i

      updated_customer_seat = customers_show.tickets.update(seat_number: new_seat_number)

          puts "Your changes have been made!"

  when "4"
      puts "Please select the ticket(s) you would like to change the date(DD/MM/YYYY) to"
          # Ticket.change_date_of_show(show_name, desired_date)   #old method
          #step 1
            puts "Here are the shows you have tickets to:"
            current_user.tickets.each do |tix|
              puts tix.broadway_show.title
            end
            #step 2
            puts "Which show do you want to change the date for?"
            show_title = gets.chomp

            customers_show = current_user.broadway_shows.find_by(title: show_title)

            #step 3 /final method
            puts "Please enter the date you wish to change to:"
            new_date = gets.chomp
              updated_customer_seat = customers_show.tickets.update(date: new_date)
            # Customer.all.find_by(name: current_user).tickets.find_by(broadway_show_id: show_id).update(date: new_date)
            puts "Your changes have been made!"

          when "5"
            main_menu
          end
        end
      end



    def spacer(number)
      number.times do
        puts "\n"
      end
    end

















    #1
      def Customer.book_ticket(broadway_show, seat_number, date)
        show = BroadwayShow.find_by(title: broadway_show)
        if show
          new_ticket = Ticket.create(broadway_show_id: show.id, customer_id: Customer.id, seat_number: seat_number, date: date)
          puts "You did it!!! Your seat number is #{new_ticket.seat_number} on #{new_ticket.date}"
        else
          puts "There is no show by this name :( womp"
        end
      end



    #2
      def cancel_ticket(title)
        found_ticket_by_title = BroadwayShow.find_by(title: title).tickets
        if found_ticket_by_title
          found_ticket_by_title.destroy_all
        end
      end



    #3
      def change_seat_number(name, new_seat_number)
        my_customer = Customer.all.find_by(name: name)
          my_customer.tickets.update(seat_number: new_seat_number)
            my_customer.save
      end


    #4
      def Ticket.change_date_of_show(show_name, desired_date)
        Ticket.all.find do |ticket|
          if ticket.broadway_show.title == show_name
          ticket.update(date: desired_date)
        end
      end
    end



#---------------------------------

    #1
    def all_shows_currently_playing
      BroadwayShow.all.each do |show|
        puts show.title
      end
    end

    #2
      def find_ticket_by_name(name)
        found_customer_ticket = Customer.find_by(name: name).tickets
      end

    #3
    def find_ticket_by_show_name(title)
      found_customer_ticket = Customer.find_by(title: title).tickets
    end


    #4
    def show_in_theaters?(searched_show)
        found_show = BroadwayShow.find_by(title: searched_show)
      if found_show.in_theaters ==  true
          puts "#{searched_show} will be playing in theaters!"
      else
          puts "Sorry! #{searched_show} will not be playing in theaters"
        end
    end




    #5
    def find_genre_by_show(show)
      found_show = BroadwayShow.find_by(title: show)
       puts found_show.title
          puts "Your #{found_show.title}'s is #{found_show.genre}"
    end



  # binding.pry
  # main_menu(c1)

cli = CLI.new
CLI.greet
# START OF USER STORY
