# coding: utf-8
require 'active_support/core_ext'
require 'yaml'
require 'logger'
require File.expand_path('lib/ruby_prof')
class CompGacha < Thor

  desc "execute", "全種類獲得するまでガチャって、揃ったらアイテムと獲得数を出力する."
  def execute  
    
    result = RubyProf.profiler {
      require File.expand_path('comp_gacha')
      
      inventory = Inventory.new
      until inventory.complete?
        inventory.collect TreasureBox.get
      end
      inventory.show_all
      puts "How many all junk items in your inventory? => #{inventory.count}"
    }
    
    puts result
  end
end
