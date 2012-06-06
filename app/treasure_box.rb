# coding: utf-8
class TreasureBox
  extend Enumerable
  
  ITEMS = [:hoge, :piyo, :fuga, :bar, :buz]
  
  class << self
    
    def get
      ITEMS[rand(ITEMS.length)]
    end
    
    def each
      ITEMS.each do |item|
        yield item
      end
    end
  end
end
