#!/usr/bin/env ruby
require 'pry'

class Producer
 
  @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all = []
end

def Producer.all
    puts @@all.map{ |dog| dog.name }
  end
end
