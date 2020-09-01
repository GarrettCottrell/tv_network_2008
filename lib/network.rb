require './lib/character'
require './lib/show'

class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_characters_variable = @shows.map do |show|
      show.characters.find_all do |character|
        show.characters
      end
    end
    main_characters_variable.flatten
  end

  def actors_by_show
    @shows.group_by do |show|
    show.actors
    end
  end
end
