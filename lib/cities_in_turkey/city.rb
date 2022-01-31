module CitiesInTurkey
  class City
    def initialize(name, alpha_2_code, towns)
      @name = name
      @alpha_2_code = alpha_2_code
      @towns = towns
    end

    def towns
      @towns.map { |town| Town.new(town['name'], town['districts']) }.to_a
    end

    def name
      @name
    end

    def alpha_2_code
      @alpha_2_code
    end
  end
end
