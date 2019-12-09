class PotterSearchFacade
  def initialize(house)
    @house = house
  end

  def characters
    @raw_character_data ||= get_characters
    create_characters(@raw_character_data)
  end

  def get_characters
    @data ||= service.get_house_characters(house)
  end

  def character_count
    characters.length
  end

  private
  attr_reader :house

  def service
    PotterService.new
  end

  def create_characters(raw_character_data)
    raw_character_data.map do |character|
      Character.new(character)
    end
  end
end
