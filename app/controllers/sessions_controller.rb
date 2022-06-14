class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])

    if user.try(:authenticate, params[:name])
      session[:user_id] = user.id
      redirect_to home_index_path, notice: "Hola #{user.name} eres #{user.role}"
    else
      redirect_to login_path, alert: "Usuario o contraseña invalidos"

    end

  end

  def eliminar
    session[:user_id] = nil
    redirect_to new_session_path, notice: "Logged out"
  end
end
