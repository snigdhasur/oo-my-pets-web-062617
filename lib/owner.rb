class Owner
  # code goes here
  attr_accessor :pets, :name 
  attr_reader :species 

  @@all = []

  def initialize(name)
  	@pets = {fishes: [], cats: [], dogs: []}
  	@@all << self 
  	@name = name 
  	@species = "human"
  end 

  def self.all
  	@@all 
  end 

  def self.reset_all
  	@@all.clear 
  end 

  def self.count 
  	@@all.size
  end 

  def say_species
  	return "I am a #{@species}."
  end 

  def buy_fish(name)
  	new_fish = Fish.new(name)
  	@pets[:fishes] << new_fish
  	new_fish
  end 

   def buy_cat(name)
  	new_cat = Cat.new(name)
  	@pets[:cats] << new_cat
  	new_cat
  end 

   def buy_dog(name)
  	new_dog = Dog.new(name)
  	@pets[:dogs] << new_dog
  	new_dog
  end 

  def walk_dogs
  	@pets[:dogs].each do |dog|
  		dog.mood = "happy"
  	end 
  end 

  def play_with_cats
  	@pets[:cats].each do |cat|
  		cat.mood = "happy"
  	end 
  end 

  def feed_fish
  	@pets[:fishes].each do |fish|
  		fish.mood = "happy"
  	end 
  end 

   def sell_pets
  	@pets.values.flatten.each do |pet|
  		pet.mood = "nervous"
  	end 
  	@pets[:fishes].clear
  	@pets[:cats].clear
  	@pets[:dogs].clear
  end 

  def list_pets
  	return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end 

end