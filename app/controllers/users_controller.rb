class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show edit update destroy eliminar]
  skip_before_action :authorize


  def index
    @users = User.order(:name)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to articles_path, notice:"Usuario #{@user.name} registrado con exito"

    else
      render :new
    end

  end

  def eliminar 
    @user.destroy

    respond_to do |format|
      format.html { redirect_to categories_url, notice: "Usuario eliminado." }
      format.json { head :no_content }
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :role)
  end

end
