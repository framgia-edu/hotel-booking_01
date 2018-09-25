class Admin::ImagesController < Admin::BaseController
  def destroy
    @image = Image.find_by id: params[:id]
    hotel = @image.hotel
    if @image.destroy
      redirect_to edit_admin_hotel_url(hotel)
    else
      render "admin/hotel/edit"
    end
  end
end
