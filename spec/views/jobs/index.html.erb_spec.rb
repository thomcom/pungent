require 'spec_helper'

describe "/jobs/index.html.erb" do
  include JobsHelper

  before(:each) do
    assigns[:jobs] = [
      stub_model(Job,
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
      ),
      stub_model(Job,
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
    ]
  end

  it "renders a list of jobs" do
    render
    response.should have_tag("tr>td", "value for jobID".to_s, 2)
    response.should have_tag("tr>td", "value for rep".to_s, 2)
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for buyer".to_s, 2)
    response.should have_tag("tr>td", "value for booked".to_s, 2)
    response.should have_tag("tr>td", "value for date".to_s, 2)
    response.should have_tag("tr>td", "value for invoice".to_s, 2)
    response.should have_tag("tr>td", "value for shipped".to_s, 2)
    response.should have_tag("tr>td", "value for margin".to_s, 2)
    response.should have_tag("tr>td", "value for commissions".to_s, 2)
    response.should have_tag("tr>td", "value for paid".to_s, 2)
  end
end
