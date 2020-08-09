class Dog
  attr_reader :name, :breed
  attr_accessor :good_dog

  @@all = []

  def initialize(name, breed, good_dog)
    @name = name
    @breed = breed
    @good_dog = good_dog

    self.class.all << self
  end


  def walks
    Walk.all.select do |individual_walks|
      individual_walks.dog == self
    end
  end

  def dog_walkers
    my_walkers = []
    Walk.all.each do |individual_walks|
      if(individual_walks.dog == self)
        my_walkers << individual_walks.dog_walker
      end
    end
    my_walkers.uniq
  end

  def take_walk(length, dog_walker)
    Walk.new(length, self, dog_walker )
  end
  

  def print_walk_details
    string = ""
    Walk.all.each do |individual_walks|
      if(individual_walks.dog_instance == self)
        string += "#{individual_walks.dog_walker_instance.name} walked #{self.name} for #{individual_walks.length_in_minutes} minutes \n"
      end
    end
    puts string
  end

  def self.good_dogs
    self.all.select do |individual_dog|
      individual_dog.good_dog == true
    end

  end

  def self.all
    @@all
  end

end
