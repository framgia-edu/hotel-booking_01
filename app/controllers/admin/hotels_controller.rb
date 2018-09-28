class Admin::HotelsController < Admin::BaseController
  before_action :user_select_box, only: %i(new create edit update)
  before_action :find_hotel, only: %i(show edit update destroy)

  def index
    @hotels = Hotel.sort_desc
  end

  def new
    @hotel = Hotel.new
    @image = @hotel.images.build
  end

  def create
    @hotel = Hotel.new hotel_params
    if @hotel.save
      save_hotel_image
      flash[:success] = t ".success"
      redirect_to admin_hotels_path
    else
      flash[:danger] = t ".fail"
      render :new
    end
  end

  def show; end

  def edit
    @hotel = Hotel.find_by id: params[:id]
  end

  def update
    if @hotel.update hotel_params
      save_hotel_image
      flash[:success] = t ".success"
      redirect_to admin_hotels_path
    else
      flash[:danger] = t ".fail"
      render :edit
    end
  end

  def destroy
    return unless @hotel.destroy
    flash[:success] = t ".success"
    redirect_to admin_hotels_path
  end

  private
  def hotel_params
    params.require(:hotel).permit :name, :email, :phone,
      :address, :description, :user_id,
      images_attributes: [:id, :name, :image, :hotel_id]
  end

  def user_select_box
    @users = User.select_box.sort_desc.employee
  end

  def find_hotel
    @hotel = Hotel.find_by id: params[:id]

    return if @hotel
    flash[:danger] = t ".not_found"
    redirect_to admin_hotels_path
  end

  def save_hotel_image
    return if params[:images].nil?
    params[:images]["image"].each do |a|
      @image = @hotel.images.create! image: a, name: Faker::Name.name
    end
  end
end
