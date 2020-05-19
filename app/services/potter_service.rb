class PotterService
  def connection
    Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.params['key'] = ENV['KEY']
    end
  end

  def houses(house)
    response = connection.get("houses")
    house_info = JSON.parse(response.body, symbolize: true)
    house_info.find do |each_house|
      if each_house["name"] == house
        @id = each_house["_id"]
      end
    end
    @id
    binding.pry
  end
end