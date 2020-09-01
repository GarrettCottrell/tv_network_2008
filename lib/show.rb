require './lib/character'

class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
  total_character_salary = 0
  @characters.each do |character|
  total_character_salary += character.salary
    end
    total_character_salary
  end

  def highest_paid_actor
  actor_name = @characters.max_by do |character|
  character.salary
    end
    actor_name.actor
  end

  def actors
    actors_names = []
    @characters.each do |character|
    actors_names << character.actor
    end
    actors_names
  end
end
