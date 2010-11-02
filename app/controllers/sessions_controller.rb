class SessionsController < ApplicationController
  def new
     @title = "Sign in"
  end

  def create
     user = User.authenticate(params[:session][:email],
                              params[:session][:password])
     if user.nil?
        flash.now[:error] = "Invalid email/password combination."
        @title = "Sign in"
        render 'new'
     else
        sign_in user
        redirect_to :jobs
        #redirect_to(@jobs, { :notice => "" })
     end
  end

  def chpassword
  end
  
  def destroy
     sign_out
     redirect_to root_path
  end

  def enter
     if user_from_remember_token.nil?
        redirect_to :signin
     else
        redirect_to :jobs
        #redirect_to(@jobs,  { :notice => "" })
     end
  end

end
