class ContactsController < ApplicationController
  before_action :set_params_logged_in, only: :create

  def new
    @contact = Contact.new
  end

  def create
    if @contact.save
      flash[:success] = t ".create_success"
      redirect_to root_url
    else
      flash[:danger] = t ".create_false"
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit :name, :address, :email,
      :phone, :title, :content
  end

  def set_params_logged_in
    if logged_in?
      set_contact
    else
      @contact = Contact.new contact_params
    end
  end

  def set_contact
    @contact = current_user.contacts.new name: current_user.name,
        email: current_user.email, phone: current_user.phone,
        address: current_user.address, title: params[:contact][:title],
        content: params[:contact][:content]
  end
end
