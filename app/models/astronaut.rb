class Astronaut

    attr_reader :name, :age, :specialty
    
    @@all = []
    def initialize (name, age, specialty)
        @name = name
        @age = age
        @specialty = specialty
        Astronaut.all << self
    end

    def self.all
        @@all
    end

    def missions
        Mission.all.select do |missions|
            missions.astronaut == self
        end
    end

    def shuttles
        missions.map do |mission|
            mission.shuttle
        end
    end

    def all_shuttles
        Mission.all.map do |missions|
            missions.shuttle.all
        end
    end

    def join_shuttle
    end

end

