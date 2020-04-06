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
        Shuttle.all.find {|shuttle| shuttle.model == num}
    end

    def missions
        Mission.all.select do |mission|
            mission.shuttle == self
        end
    end

    def current_astronauts
        missions.map do |mission|
            mission.astronaut
        end.uniq
    end

    def add_astronaut (astronaut, launch_date)

        if self.current_astronauts.count < self.capacity 
            Mission.new(launch_date, astronaut, self)
            
        end
    end

    def average_age
        #add up combined age
        #divide by number of astronauts : 
        #   self.current_astronauts.count
        total_age = self.current_astronauts.reduce(0) do |accumulator, astronauts|
            accumulator + astronauts.age
        end

        total_age / self.current_astronauts.count.to_f
    end

end
