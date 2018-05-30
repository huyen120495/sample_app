class UsersController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
    redirect_to new_user_path unless @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t ".Welcome"
      redirect_to user_url @user
    else
      flash.now[:danger] = t ".Invalid"
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end
end
