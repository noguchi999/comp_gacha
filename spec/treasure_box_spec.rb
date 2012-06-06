# coding: utf-8
require 'rspec'
require File.expand_path('app/treasure_box')

describe TreasureBox, "write your project describe.".encode(Encoding::Windows_31J) do
  before do
    @treasure_box = TreasureBox.new
  end
  
  it "write your project test scenario.".encode(Encoding::Windows_31J) do
    @treasure_box.should be_true
  end
  
  after do
  end
end
