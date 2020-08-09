# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#Dog instances
fido = Dog.new("Fido", "German Sheppard", false)
toby = Dog.new("Toby", "Yorkshire", true )
rocky = Dog.new("Rocky", "Dalmation", true)
pepina = Dog.new("Pepina", "Dachshund", false)

#DogWalker instances
charlie = DogWalker.new("Charlie", "Dalmation")
paola = DogWalker.new("Paola", "Akita Inu")
diego = DogWalker.new("Diego", "German Sheppard")

#Walk instances 
# def initialize(length_in_minutes, dog, dog_walker)


w1 = Walk.new(10, rocky, charlie)
w2 = Walk.new(15, toby, charlie)
w3 = Walk.new(11, toby, paola)
w4 = Walk.new(12, fido, diego)
w5 = Walk.new(20, pepina, paola)
w6 = Walk.new(15, rocky, paola)
w7 = Walk.new(5, fido, charlie)
w8 = Walk.new(120, toby, charlie)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
