#!/usr/bin/env ruby
require 'pry'

class Producer
  attr_accessor :name
  def initialize(name)
    @@name = name
  end
  
  def name
    name = name
  end
end
