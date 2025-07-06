

class SessionsController < ActionController::Base


  def create
    @user=User.find(username: params[:username])
    if !!@user && @user.authenticate(params[:password])
      session[:user_id]=@user.id
      redirect_to user
end
