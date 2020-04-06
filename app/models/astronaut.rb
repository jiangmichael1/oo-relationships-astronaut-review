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
        Mission.all.select {|missions| missions.astronaut == self }
    end

    def shuttles
        missions.map {|mission|mission.shuttle}.uniq
    end

    def all_shuttles
        Mission.all.map do |missions|
            missions.shuttle.all
        end
    end

    def join_shuttle(shuttle, launch_date)
        if shuttle.current_astronauts.count < shuttle.capacity
            Mission.new(launch_date, self, shuttle)
        else
            puts "This shuttle is at capacity!"
        end
    end

    def self.most_missions
        Astronaut.all.max_by do |astronaut|
            # should return a number
            # look for astronaut that results in the biggest number and return that astronaut
            puts astronaut.name
            puts astronaut.missions.count
            astronaut.missions.count
        end
    end


end

