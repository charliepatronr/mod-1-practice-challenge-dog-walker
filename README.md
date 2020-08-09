# Mock Code Challenge - Woof, I'm Walkin' Here

For this assignment, we'll be working with a **dog walking** domain.

We'll be making an app for dog walkers to track all the dogs they walk.

We have three models: `Dog`, `Walk`, and `DogWalker`

For our purposes, a `DogWalker` has many `Walk`s, a `Dog` has many `Walk`s, and a `Walk` belongs to a `Dog` and to a `DogWalker`.

`Dog` - `DogWalker` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

     Dog -< Walks >-DogWalker

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a tool that you can use to test your code. To use it, run `ruby tools/console.rb` from the command line. This will start a `pry` session with your classes defined. You can test out the methods that you write here. You can add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices. Examples of best practices might be to use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`, or, when you encounter duplicated logic, to extract it into a shared helper method.

**Before you submit!** Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### DogWalker

- `DogWalker#initialize(name, favorite_breed)`
  - should initialize with a name (string) and favorite_breed (string)
- `DogWalker#name`
  - should return the name of the dog walker. _Should not_ be able to change after initialization.
- `DogWalker#favorite_breed`
  - should return the favorite breed of the dog walker. _Should_ be able to change after initialization.
- `DogWalker.all`
  - Returns an array of all DogWalker instances

#### Dog

- `Dog#initialize(name, breed, good_dog)`
  - should initialize with a name (string), a breed (string), and whether or not this dog is a good dog (boolean)
- `Dog#name`
  - should return the name of the dog. _Should not_ be able to change after initialization.
- `Dog#breed`
  - should return the breed of the dog. _Should not_ be able to change after initialization.
- `Dog#good_dog`
  - should return the dog's good dog status. _Should_ be able to change after initialization.
- `Dog.all`
  - Returns an array of all Dog instances

#### Walk

- `Walk#initialize(length_in_minutes, dog, dog_walker)`
  - should initialize with a length_in_minutes (integer), dog (`Dog` instance) and dog_walker (`DogWalker` instance)
- `Walk#length_in_minutes`
  - should return the length of the walk in minutes. _Should not_ be able to change after initialization.
- `Walk.all`
  - Returns an array of all Walk instances

### Object Relationship Methods

#### Walk

- `Walk#dog`
  - should return the `Dog` instance for this Walk.
- `Walk#dog_walker`
  - should return the `DogWalker` instance for this Walk.
  
#### DogWalker

- `DogWalker#walks`
  - returns an array of all the walks given by the DogWalker
- `DogWalker#dogs`
  - returns a **unique** array of all the dogs who been walked by the DogWalker

#### Dog

- `Dog#walks`
  - returns an array of all the walks that the Dog has taken
- `Dog#dog_walkers`
  - returns a **unique** array of all the dog walkers that the Dog received walks from

### Aggregate and Association Methods

#### Walk

- `Walk#happy_walker?`
  - should return true if the favorite_breed of the dog walker for this walk matches the breed of the dog for this walk, and false if it doesn't match
- `Walk#print_details`
  - should `puts` to the terminal a string representing this walk
  - the string should be formatted like this: `{dog walker name} walked {dog name} for {length} minutes`

#### DogWalker

- `DogWalker#give_walk(length_in_minutes, dog)`
  - takes a `dog` (an instance of the `Dog` class) and an `length_in_minutes` (integer) as arguments, and creates a new `Walk` instance associated with this dog walker and the given dog
- `DogWalker#length_of_all_walks`
  - returns an integer for the total length of all walks this dog walker has given
- `DogWalker.most_walks`
  - should return an instance of `DogWalker` which has given the most walks

#### Dog

- `Dog#take_walk(length_in_minutes, dog_walker)`
  - takes a `dog_walker` (an instance of the `DogWalker` class) and an `length_in_minutes` (integer) as arguments, and creates a new `Walk` instance associated with this dog and the given dog walker
- `Dog#print_walk_details`
  - should `puts` to the terminal a string for each of the dog's walks
  - each string should be formatted like this: `{dog walker name} walked {dog name} for {length} minutes`
- `Dog.good_dogs`
  - returns an array of all dog instances whose are good dogs


## Rubric

### Build classes using OO Ruby Syntax

1. Class code has a syntax or runtime error. Code does not run at all, or exits with an error, or most Object-oriented deliverables are not implemented.
2. No syntax errors. Some deliverables function correctly. Mixes up syntax for class and instance methods, refers to variables in the wrong scope, or uses `self` incorrectly, leading to logical errors. Method and variable names do not correspond to their respective behavior or data types. Methods might be duplicated, or code includes unused methods without a clear purpose.
3. Correct class syntax for the deliverables submitted. May be incomplete or missing deliverables. Most code generally expresses intent: method and variable names match their behaviors and data types. Methods are not duplicated. Code does not have unused or methods without a clear purpose.
4. Correct class syntax for all of the submitted code. Code express intent: method and variable names indicate their behavior and data types. Some deliverables might not be complete. No methods are duplicated.
5. Correct class syntax for all deliverables, all deliverables complete. Code expresses intent: method and variable names indicate their behavior and data types, with the correct pluralization. No methods are duplicated. All methods have a clear purpose. Shared functionality is factored out into helper methods. Appropriate use of attr\_\* macros.

### Model relationships using Ruby

1. Submitted code does not relate models to each other through methods or data.
2. Models relate to each other, but incompletely. Relationship methods are missing or have logic errors, store data on the wrong model, or are missing a single source of truth.
3. Models relate to each other as specified in the instructions. Data is stored on the correct models, relationship methods are defined on the right models, and the logic correctly implements the relationships. Aggregate methods using the relationships may be incomplete or have errors.
4. Models relate to each other as specified in the instructions. Aggregate methods work, but might not use helper methods effectively.
5. Models relate to each other as specified in the instructions. Aggregate methods use helper methods effectively.

### Solve problems with collections of data

1. Does not attempt to solve collections problems, or has syntax errors in collection code.
2. Collections methods have runtime or logic errors. Collections methods may use the wrong iterators, have incorrect logic, or many of the collections methods are unimplemented.
3. Some collections methods work correctly, though several might be unimplemented. Code may not use the appropriate built in method for each problem, or duplicate logic instead of using helper methods.
4. All collections methods are implemented and function correctly. Most use appropriate higher-level built-in methods. Methods may duplicate logic instead of using helper methods.
5. All collections methods implemented and function correctly, using appropriate higher-level built-in methods. Shared logic is factored out to helper methods.
