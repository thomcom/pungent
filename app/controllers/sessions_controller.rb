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
<<<<<<< HEAD
        redirect_to :jobs, :action => :new
=======
        redirect_to :jobs
>>>>>>> 6993742... Everything except authentication is 99%
     end
  end

  def chpassword
  end
  
  def destroy
     sign_out
     redirect_to root_path
  end
  # 
  # def enter
  #    if user_from_remember_token.nil?
  #       redirect_to :signin
  #    else
  #       redirect_to :jobs
  #    end
  # end

  def enter
     if user_from_remember_token.nil?
        redirect_to :signin
     else
        redirect_to :jobs
     end
  end

end
