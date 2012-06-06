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
        full_items = {}
        i = 0
        DROP_RATE.each do |item, weight|
          weight.times.each do
            full_items.store(i+=1, item)
          end
        end
        @@drop_limit = i
        
        full_items
      end
  end
  
  ITEMS = create_items
end
