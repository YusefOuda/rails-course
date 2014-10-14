class CommentsController < ApplicationController
  def create
    video = Video.find(params[:video_id])
    comment = video.comments.new(comment_params)
    comment.save
    redirect_to "/videos/#{params[:video_id]}"
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to "/videos/#{params[:video_id]}"
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end