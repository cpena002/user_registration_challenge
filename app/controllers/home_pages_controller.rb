class HomePagesController < ApplicationController
  def register
  end

  #make a new user, when button on register page is clicked.
  #Store user object in session, make session YAML.
  #redirect to account page.
  def made_account
    user = User.new(params[:user_id], params[:password])
    session[:user] = user.to_yaml
    redirect_to '/home_pages/account'
  end

  #Load account page and display user id.
  #unpack session YAML into instance variable.
  def account
    @user = YAML.load(session[:user])
  end

  #Load loggedin page and display all user info excluding password
  def login
    user = User.new(params[:user_id], params[:password])
    #go to log in page
    #log in w/ password, user_id
    #compare the params from the login form to the session[:user]
    #if the params from the login (maybe as a new User?) equal YAML.load(session[:user]), keep going
    if user.to_yaml != session[:user]
     render '/home_pages/account'
   else
     redirect_to '/home_pages/loggedin'
    end
  end

  def loggedin
    @user = YAML.load(session[:user])
  end
end
