class Producer

  @@all = []

  attr_accessor :name, :films

  def initialize(name)
    @name = name
    @films = []
    @@all << self
  end

  def self.all
    @@all
  end