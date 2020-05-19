class PotterService
  def connection
    Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.params['key'] = ENV['KEY']
  end

  def members
    response = connection.get('/houses')
    x = JSON.parse(response.body, symbolize: true)
  end
end