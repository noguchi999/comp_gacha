# coding: utf-8
require 'rspec'
require File.expand_path('app/treasure_box')

describe TreasureBox, "write your project describe." do
  before do
  end
  
  it "getメソッドで:hoge, :piyo, :fuga, :bar, :buzのいずれかが返却される.".encode(Encoding::Windows_31J) do
    [:hoge, :piyo, :fuga, :bar, :buz].include?(TreasureBox.get).should be_true
  end
  
  it "eachメソッドで:hoge, :piyo, :fuga, :bar, :buzが全て返却される.".encode(Encoding::Windows_31J) do
    items = []
    TreasureBox.each do |item|
      items << item
    end
    
    items.should eql [:hoge, :piyo, :fuga, :bar, :buz]
  end
  
  after do
  end
end
