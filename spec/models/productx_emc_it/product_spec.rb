# encoding: utf-8
require 'spec_helper'

describe ProductxEmcIt::Product do
  
  it "should be OK" do
    p = FactoryGirl.build(:product)
    p.should be_valid
  end
  
  it "should have a valid product name" do
    p = FactoryGirl.build(:product, :name => nil)
    p.should_not be_valid
  end

  it "should not take a nil model" do
    p = FactoryGirl.build(:product, :model => nil)
    p.should_not be_valid
  end  

end
