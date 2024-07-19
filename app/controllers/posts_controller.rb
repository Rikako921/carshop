class PostsController < ApplicationController
  def index
  @post = Post.first(3)
  end
  def latest
    @post = Post.all.order(created_at: :desc).page(params[:page]).per(4)
  end
end
