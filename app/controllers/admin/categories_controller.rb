class Admin::CategoriesController < Admin::BaseController
  before_action :find_category, only: %i(show edit update destroy)

  def index
    @categories = Category.sort_desc_by_post_count
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params

    if @category.save
      flash[:success] = t ".success"
      redirect_to admin_categories_path
    else
      flash[:danger] = t ".fail"
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @category.update category_params
      flash[:success] = t ".success"
      redirect_to admin_categories_path
    else
      flash[:danger] = t ".fail"
      render :edit
    end
  end

  def destroy
    return unless @category.destroy
    flash[:success] = t ".success"
    redirect_to admin_categories_path
  end

  private
  def category_params
    params.require(:category).permit :name, :description
  end

  def find_category
    @category = Category.find_by id: params[:id]

    return if @category
    flash[:danger] = t ".not_found"
    redirect_to admin_categories_path
  end
end
