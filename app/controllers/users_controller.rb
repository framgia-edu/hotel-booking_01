class UsersController < ApplicationController
  before_action :find_by_user, only: %i(show edit update)

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t(".create_success")
      redirect_to @user
    else
      flash[:danger] = t(".create_false")
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @user.update user_params
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit :user_name, :name, :email,
      :address, :phone, :password, :password_confirmation
  end

  def find_by_user
    @user = User.find_by id: params[:id]

    return if @user
    flash[:danger] = t(".don't_find")
    redirect_to login_url
  end
end
