require 'spec_helper'

describe Job do
  before(:each) do
    @valid_attributes = {
      :jobID => "value for jobID",
      :rep => "value for rep",
      :name => "value for name",
      :buyer => "value for buyer",
      :booked => "value for booked",
      :date => "value for date",
      :invoice => "value for invoice",
      :shipped => "value for shipped",
      :margin => "value for margin",
      :commissions => "value for commissions",
      :paid => "value for paid"
    }
  end

  it "should create a new instance given valid attributes" do
    Job.create!(@valid_attributes)
  end
end
