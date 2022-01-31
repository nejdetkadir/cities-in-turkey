module CitiesInTurkey
  class District
    def initialize(name, quarters)
      @name = name
      @quarters = quarters
    end

    def quarters
      @quarters.map { |quarter| Quarter.new(quarter['name']) }.to_a
    end

    def name
      @name
    end
  end
end
