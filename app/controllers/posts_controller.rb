class PostsController < ApplicationController
  def index
  @post = Post.first(3)
  end
  def latest
    @post = Post.all.order(created_at: :desc).page(params[:page]).per(4)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to '/'
      else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def posts_params
    params.require(:post).permit(:image, :price_total, :year, :distance, :inspection, :color, :car_name, :car_model, :rec_point, :grade)
  end

end
