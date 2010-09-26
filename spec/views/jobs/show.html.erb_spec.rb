require 'spec_helper'

describe "/jobs/show.html.erb" do
  include JobsHelper
  before(:each) do
    assigns[:job] = @job = stub_model(Job,
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
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ jobID/)
    response.should have_text(/value\ for\ rep/)
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ buyer/)
    response.should have_text(/value\ for\ booked/)
    response.should have_text(/value\ for\ date/)
    response.should have_text(/value\ for\ invoice/)
    response.should have_text(/value\ for\ shipped/)
    response.should have_text(/value\ for\ margin/)
    response.should have_text(/value\ for\ commissions/)
    response.should have_text(/value\ for\ paid/)
  end
end
