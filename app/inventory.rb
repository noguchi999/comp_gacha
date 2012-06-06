# coding: utf-8
class Inventory
  
  def initialize
    @inventory = {}
    TreasureBox.each do |item|
      @inventory.store(item.to_sym, 0)
    end
  end
  
  def collect(item)
    @inventory[item.to_sym] += 1
  end
  
  def complete?
    @inventory.values.select{|counter| counter == 0}.empty?
  end
  
  def all
    @inventory
  end
  
  def show_all
    puts all
  end
end
