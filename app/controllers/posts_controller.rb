class PostsController < ApplicationController
  def index
  @post = Post.all
  end
  def latest
    @post = Post.all
  end
end
