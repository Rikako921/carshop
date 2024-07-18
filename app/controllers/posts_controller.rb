class PostsController < ApplicationController
  def index
  @post = Post.all
  end
  def latest
    @post = Post.all.order(created_at: :desc).page(params[:page]).per(4)
  end
end
