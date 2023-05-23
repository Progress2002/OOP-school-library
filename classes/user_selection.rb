class UserSelection
  def initialize(num, app)
    @num = num
    @app = app
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def selection
    case @num
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
