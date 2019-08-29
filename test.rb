class Person
  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def normalize_name
    self.name.split(" ").collect{|w| w.capitalize}.join(" ")
  end
 
  def self.normalize_names
    self.all.each do |person|
      person.name = person.normalize_name
    end
  end
end

steve = Person.new("steve jenkins")
calum = Person.new("calum jones")

Person.normalize_names

Person.all.each do | person |
  puts person.name
