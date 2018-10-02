class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      flash[:success] = t ".login_success"
      log_in user
      admin_rights
    else
      flash[:danger] = t ".login_false"
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  private

  def admin_rights
    users_type = current_user.user_type

    if users_type == User.user_types[:user]
      redirect_to root_url
    else
      redirect_to admin_hotels_path
    end
  end
end
