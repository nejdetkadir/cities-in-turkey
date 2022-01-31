module CitiesInTurkey
  class Town
    def initialize(name, districts)
      @name = name
      @districts = districts
    end

    def districts
      @districts.map { |district| District.new(district['name'], district['quarters']) }.to_a
    end

    def name
      @name
    end
  end
end
