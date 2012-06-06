# coding: utf-8
class TreasureBox
  extend Enumerable
  
  DROP_RATE  = {hoge: 100000, piyo: 1900000, fuga: 5000000, bar: 500000, buz: 2500000}
  
  class << self
    
    def get
      ITEMS[rand(1..@@drop_limit)] #配列じゃなくてHashのKeyを数字にして検索しているから, rand(full_items.length)ってしちゃダメ.
    end
    
    def each
      DROP_RATE.each_key do |item|
        yield item
      end
    end
    
    private
      def create_items
        items = {}
        i = 0
        DROP_RATE.each do |item, weight|
          items = items.merge(weight.times.inject(Hash.new){|h, v| h.store(i+=1, item); h})
        end
        @@drop_limit = i
        
        items
      end
  end
  
  ITEMS = create_items
end