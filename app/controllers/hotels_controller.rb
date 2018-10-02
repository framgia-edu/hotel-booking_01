class HotelsController < ApplicationController
  def new
    @hotels = Hotel.new
  end

  def index
    @hotels = if params[:search]
                Hotel.address_like(params[:search]).page(params[:page])
                     .per Settings.posts_controller.per_page
              else
                Hotel.page(params[:page])
                     .per Settings.posts_controller.per_page
              end
  end

  def show
    @hotel = Hotel.find_by id: params[:id]

    return if @hotel
    flash[:danger] = t ".not_found"
    redirect_to hotels_path
  end
end
