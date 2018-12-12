#!/usr/bin/env ruby
require 'pry'

class Producer
  attr_accessor :name
  
  def initialize(name)
    @@name = name
  end
  
  def producer_name
    name = name
  end
end
