# coding: utf-8
require 'rspec'
require File.expand_path('app/inventory')

describe Inventory, "write your project describe.".encode(Encoding::Windows_31J) do
  before do
    @inventory = Inventory.new
  end
  
  it "write your project test scenario.".encode(Encoding::Windows_31J) do
    @inventory.should be_true
  end
  
  after do
  end
end
