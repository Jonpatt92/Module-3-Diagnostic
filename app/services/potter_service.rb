class PotterService
  def get_house_characters(house)
      response = fetch_data("/v1/characters?house=#{house}")
      parse_data(response)[:results]
  end

  private

  def parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def fetch_data(url)
    connection.get(url)
  end

  def connection
    Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['POTTER_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
