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
end
