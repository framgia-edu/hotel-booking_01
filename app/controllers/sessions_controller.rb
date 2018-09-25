class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      flash[:success] = t ".login_success"
      log_in user
      redirect_to root_url
    else
      flash[:danger] = t ".login_false"
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
