# coding: utf-8
class TreasureBox
  extend Enumerable
  
  DROP_RATE  = {hoge: 100000, piyo: 1900000, fuga: 5000000, bar: 500000, buz: 2500000}
  
  class << self
    
    def get
      ITEMS[rand(ITEMS.length)]
    end
    
    def each
      DROP_RATE.each_key do |item|
        yield item
      end
    end
    
    private
      def create_items
        items = []
        DROP_RATE.each do |item, weight|
          weight.times.each do
            items << item
          end
        end

        items
      end
  end
  
  ITEMS = create_items
end