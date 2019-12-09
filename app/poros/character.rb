class Character
  attr_reader :name, :role, :house, :patronus, :phoenix, :species, :boggart, :bloodstatus, :dumbledoresarmy

  def initialize(character_data)
    @name = character_data[:name]
    @role = character_data[:role]
    @house = character_data[:house]
    @patronus = character_data[:patronus]
    @phoenix = character_data[:orderOfThePhoenix]
    @species = character_data[:species]
    @boggart = character_data[:boggart]
    @bloodstatus = character_data[:bloodStatus]
    @dumbledoresarmy = character_data[:dumbledoresArmy]
  end
end
