class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    @employees = []
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(person)
    @employees << person
  end
end
