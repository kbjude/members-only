class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_post, only: %i[new create]
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    redirect_to posts_path if @post.save!
  end

  private

  def set_post
    @post = Post.new
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
