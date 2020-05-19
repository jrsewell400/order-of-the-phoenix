class PotterService
  def connection
    Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.params['key'] = ENV['KEY']
    end
  end

  def house(house)
    response = connection.get("/houses/#{house}")
    JSON.parse(response.body, symbolize: true)
  end
end