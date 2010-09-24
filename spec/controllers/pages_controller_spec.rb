require 'spec_helper'

describe PagesController do
   integrate_views

  #Delete these examples and add some real ones
  it "should use PagesController" do
    controller.should be_an_instance_of(PagesController)
  end


  describe "GET 'admin'" do
    it "should be successful" do
      get 'admin'
      response.should be_success
    end
    it "should have the right title" do
       get 'admin'
       response.should have_tag("title","Jobs Administration")
    end
  end

  describe "GET 'jobs'" do
    it "should be successful" do
      get 'jobs'
      response.should be_success
    end
    it "should have the right title" do
       get 'jobs'
       response.should have_tag("title","View Jobs")
    end
  end

  describe "GET 'user'" do
    it "should be successful" do
      get 'user'
      response.should be_success
    end
    it "should have the right title" do
       get 'user'
       response.should have_tag("title","User Administration")
    end
  end
  
  describe "GET 'login'" do
     it "should be successful" do
        get 'login'
        response.should be_success
     end
     it "should have the right title" do
        get 'login'
        response.should have_tag("title","Login")
     end
  end
end

