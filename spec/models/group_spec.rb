require File.join(File.dirname(__FILE__),'../spec_helper')

describe "A group" do
  before(:each) do
    @valid_attributes = {
      :name => 'Test group'
    }
  end

  it "should create a new instance given valid attributes" do
    Group.create!(@valid_attributes)
  end
  
  it "should have users" do
    group = Group.new
    group.should respond_to(:users)
    group.users.length.should == 0
  end
  
end
