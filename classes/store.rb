require_relative 'preserve_data'

class Store
  def initialize
    @handleData = HandleData.new
    @people = []
    @books = []
    @rentals = []
  end

  def store_people(file, data)
    @people = @handleData.read_data(file) if File.exist?(file)
    @people.push(data)
    @handleData.save_data(file, @people)
  end

  def store_books(file, data)
    @books = @handleData.read_data(file) if File.exist?(file)
    @books.push(data)
    @handleData.save_data(file, @books)
  end

  def store_rentals(file, data)
    @rentals = @handleData.read_data(file) if File.exist?(file)
    @rentals.push(data)
    @handleData.save_data(file, @rentals)
  end
  
end
