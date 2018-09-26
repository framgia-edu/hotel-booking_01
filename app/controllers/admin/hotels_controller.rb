class Admin::HotelsController < Admin::BaseController
  layout "admin/application"

  def index
    @hotels = Hotel.sort_desc
  end

  def new; end

  def create; end

  def show; end

  def edit; end

  def update; end

  def destroy; end
end
