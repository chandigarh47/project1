class SessionController < ApplicationController
  def new
  end

  def create
    #find the user based on their email
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password]) #parantheses is required to show where it goes
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "invalid username or password"
      redirect_to login_path
    end
    #check if the password authenticates
    #remember this is the session in the sessions
    #else
    #send them to the login page again
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
