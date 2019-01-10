class Api::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    render json: Post.all
  end



  private

    def set_post
      @post = Post.find_by(id: params[:id])
    end
end
