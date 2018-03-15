class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @employees = []
    @cages = []
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(person)
    @employees << person
  end

  def open?(date)
    (@season_opening_date < date) && (@season_closing_date > date)
  end

  def add_animal(new_animal)
    @cages.each do |cage|
      if cage.empty?
        return cage.animal = new_animal
      end
    end

    return "Your zoo is already at capacity!"
  end


end
