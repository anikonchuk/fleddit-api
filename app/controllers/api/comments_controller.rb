class Api::CommentsController < ApplicationController

  def index
    render json: Comment.all
  end

  def create
    post = Comment.new(comment_params)
    if comment.save
      render json: comment
    else
      render json: { message: comment.errors }, status: 400
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :content, :post_id)
  end

end
