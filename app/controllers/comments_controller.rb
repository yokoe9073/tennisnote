class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end