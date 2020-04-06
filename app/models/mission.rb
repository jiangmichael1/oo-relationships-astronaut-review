class Mission

    attr_accessor :shuttle, :astronaut
    attr_reader :launch_date

    @@all = []

    def initialize (launch_date)
        @launch_date = launch_date
        @shuttle = shuttle
        @astronaut = astronaut
        Mission.all << self
    end

    def self.all
        @@all
    end

end
