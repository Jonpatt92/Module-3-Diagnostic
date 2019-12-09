class Character
  attr_reader :name, :role, :house, :patronus, :phoenix

  def initialize(character_data)
    @name = character_data[:name]
    @role = character_data[:role]
    @house = character_data[:house]
    @patronus = character_data[:patronus]
    @phoenix = character_data[:orderOfThePhoenix]
  end
end
