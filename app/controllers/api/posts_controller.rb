class Api::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update]

  def index
    render json: Post.all
  end

  def show
    render json: @post
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: post
    else
      render json: { message: post.errors }, status: 400
    end
  end

  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: { message: post.errors }, status: 400
    end
  end

  private

    def set_post
      @post = Post.find_by(id: params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :author, :img_url, :likes)
    end
end
