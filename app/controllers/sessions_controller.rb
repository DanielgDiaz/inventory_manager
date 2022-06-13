class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(name: params[:name])

    if @user&.authenticate(params[:password])
      redirect_to articles_path
    else

    end

    # if user.try(:authenticate, params[:password])
    #   session[:user_id] = user.id
    #   redirect_to home_url
  
     
    # end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_index_url, notice: "Logged out"
  end
end
