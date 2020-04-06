class Shuttle

    attr_reader :model, :capacity
    @@all = []

    def initialize (model, capacity)
        @model = model
        @capacity = capacity
        Shuttle.all << self
    end

    def self.all
        @@all
    end

    def self.find_by_model (num)
        self.all.find {|shuttle| shuttle.model == num}
    end

    def current_missions
        Missions.all.select do |mission|
            mission.shuttle == self
        end
    end

    def current_astronauts
        current_missions.map do |mission|
            mission.astronaut
        end
    end


end
