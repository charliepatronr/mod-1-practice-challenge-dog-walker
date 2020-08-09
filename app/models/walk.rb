class Walk

    @@all = []

    attr_accessor :length_in_minutes, :dog_instance, :dog_walker_instance

    def initialize(length_in_minutes, dog_instance, dog_walker_instance)
        @length_in_minutes = length_in_minutes
        @dog_instance = dog_instance
        @dog_walker_instance = dog_walker_instance

        self.class.all << self
    end

    def dog
        self.dog_instance
    end 
    
    def dog_walker
        self.dog_walker_instance
    end

    def happy_walker
        self.dog_instance.breed == self.dog_walker_instance.favorite_breed
    end
    
    def print_details
        "#{self.dog_walker_instance.name} walked #{self.dog_instance.name} for #{self.length_in_minutes} minutes"
    end


    def self.all
        @@all
    end

end
