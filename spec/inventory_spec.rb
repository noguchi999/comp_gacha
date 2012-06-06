# coding: utf-8
require 'rspec'
require File.expand_path('app/inventory')
require File.expand_path('app/treasure_box')

describe Inventory, "write your project describe." do
  before do
    @inventory = Inventory.new
  end
  
  it "collectメソッドでinventoryに保存したTreasureBoxのItemをallで出力できること.".encode(Encoding::Windows_31J) do
    @inventory.collect TreasureBox.get
    @inventory.all.keys.should eql [:hoge, :piyo, :fuga, :bar, :buz]
  end
  
  it "complete?メソッドがtrueになるまでループした後にallメソッドで取得したItemの獲得数が0のものがないこと。".encode(Encoding::Windows_31J) do
    until @inventory.complete?
      @inventory.collect TreasureBox.get
    end
    @inventory.all.values.select{|v| v == 0}.should be_empty
  end
  
  it "complete?メソッドがtrueになるまでループした後にallメソッドで取得したItemの獲得数が1のものが1つ以上、あること。".encode(Encoding::Windows_31J) do
    until @inventory.complete?
      @inventory.collect TreasureBox.get
    end
    @inventory.all.values.select{|v| v == 1}.length.should >= 1
  end
  
  after do
  end
end