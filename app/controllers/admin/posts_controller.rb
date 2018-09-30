class Admin::PostsController < Admin::BaseController
  before_action :find_post, only: %i(show edit update destroy)
  before_action :find_category, only: %i(new create)

  def index
    @category = Category.find_by id: params[:category_id]
    @posts = if @category
               @category.posts.sort_desc
             else
               Post.sort_desc
             end
  end

  def new
    @post = if @category
              @category.posts.build
            else
              Post.new
            end
  end

  def create
    @post = if @category
              @category.posts.build post_params
            else
              Post.new post_params
            end
    @post.user = current_user

    if @post.save
      flash[:success] = t ".success"
      redirect_to admin_posts_path
    else
      flash[:danger] = t ".fail"
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @post.update post_params
      flash[:success] = t ".success"
      redirect_to admin_category_posts_path @post.category
    else
      flash[:danger] = t ".fail"
      render :edit
    end
  end

  def destroy
    return unless @post.destroy
    flash[:success] = t ".success"
    redirect_to admin_posts_path
  end

  private

  def find_post
    @post = Post.find_by id: params[:id]

    return if @post
    flash[:danger] = t ".post_not_found"
    redirect_to admin_posts_path
  end

  def find_category
    @category = Category.find_by id: params[:category_id]

    return if @category
    flash[:danger] = t ".category_not_found"
    redirect_to admin_posts_path
  end

  def post_params
    params.require(:post).permit :title, :content, :category_id
  end
end
