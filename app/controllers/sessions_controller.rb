class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(name: params[:name])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to home_url
    else
      redirect_to articles_path, alert "Contraseña invalida"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_index_url, notice: "Logged out"
  end
end
