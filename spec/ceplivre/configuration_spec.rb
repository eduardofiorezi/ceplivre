# encoding: UTF-8
require 'spec_helper'

describe "CepLivre::Configuration" do
  before :all do
    CepLivre::Configuration.key = nil
  end
  
  it "should get the ceplivre key" do
    CepLivre::Configuration.key.should == "your_key"
  end
  
  it "should set a key for ceplivre api" do
    key_to_test = "122345677009212"
    
    CepLivre::Configuration.key = key_to_test
    CepLivre::Configuration.key.should == key_to_test
  end
end