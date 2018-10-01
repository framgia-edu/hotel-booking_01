class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page])
                 .per Settings.posts_controller.per_page
  end

  def show
    @post = Post.find_by id: params[:id]
    @relate_posts = Post.all.sample(4)

    return if @post
    flash[:danger] = t ".not_found"
    redirect_to posts_path
  end
end
