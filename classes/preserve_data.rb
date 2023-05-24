require 'json'

class HandleData
  def read_data(filename)
    file = File.read(filename)
    JSON.parse(file)
  end

  def save_data(filename, data)
    File.write(filename, JSON.generate(data))
  end
end
