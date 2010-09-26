require 'spec_helper'

describe "/jobs/new.html.erb" do
  include JobsHelper

  before(:each) do
    assigns[:job] = stub_model(Job,
      :new_record? => true,
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

  it "renders new job form" do
    render

    response.should have_tag("form[action=?][method=post]", jobs_path) do
      with_tag("input#job_jobID[name=?]", "job[jobID]")
      with_tag("input#job_rep[name=?]", "job[rep]")
      with_tag("input#job_name[name=?]", "job[name]")
      with_tag("input#job_buyer[name=?]", "job[buyer]")
      with_tag("input#job_booked[name=?]", "job[booked]")
      with_tag("input#job_date[name=?]", "job[date]")
      with_tag("input#job_invoice[name=?]", "job[invoice]")
      with_tag("input#job_shipped[name=?]", "job[shipped]")
      with_tag("input#job_margin[name=?]", "job[margin]")
      with_tag("input#job_commissions[name=?]", "job[commissions]")
      with_tag("input#job_paid[name=?]", "job[paid]")
    end
  end
end
