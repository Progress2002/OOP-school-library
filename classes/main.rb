#!/usr/bin/env ruby
require './app'

class Main
  def initialize
    @app = App.new
  end

  puts 'Welcome to School Library App!'

  def run
    while @user_selection != 7
      puts "\n"
      puts 'Please chose an option by entering a number :'
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'

      @user_selection = gets.chomp
      selection
    end
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def selection
    case @user_selection
    when 1
      @app.list_books
    when 2
      @app.list_people
    when 3
      @app.create_person
    when 4
      @app.create_book
    when 5
      @app.create_rental
    when 6
      @app.list_rentals
    when 7
      puts 'Thank you for using this app! 😇'
    else
      puts "No acction matches your selection(#{@user_selection}), Kindly provide a valid input"
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end

main = Main.new
main.run
