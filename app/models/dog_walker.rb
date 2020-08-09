class DogWalker
  attr_reader :name
  attr_accessor :favorite_breed

  @@all = []

  def initialize(name, favorite_breed)
    @name = name
    @favorite_breed = favorite_breed

     self.class.all << self

  end

  def walks
    my_walks =  []
    Walk.all.each do |individual_walk|
      if(individual_walk.dog_walker_instance == self)
        my_walks << individual_walk
      end
    end
    my_walks
  end

  def dogs 
    my_dogs = []
    Walk.all.each do |individual_walk|
      if(individual_walk.dog_walker_instance == self)
        my_dogs << individual_walk.dog_instance
      end
    end
    my_dogs.uniq
  end

  def give_walk(walk_length, dog)
    Walk.new(walk_length, dog, self)
  end

  def length_of_all_walks
    total_walks = 0
    Walk.all.each do |individual_walk|
      if(individual_walk.dog_walker_instance == self)
        total_walks += individual_walk.length_in_minutes
      end
    end
    total_walks
  end

  def self.most_walks
    walk_hash = {}
    self.all.each do |individual_dog_walker|
      walker_counter = 0
      Walk.all.each do |individual_walk|
        if(individual_walk.dog_walker_instance == individual_dog_walker)
          walker_counter += 1
        end
      end
      walk_hash[individual_dog_walker.name] = walker_counter
    end

    walker_name = walk_hash.sort_by {|k, v| -v}.first.first
    
    self.all.find do |individual_dog_walker|
      individual_dog_walker.name == walker_name
    end
  end

  def self.all
    @@all
  end

end
