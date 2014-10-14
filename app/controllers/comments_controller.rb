class CommentsController < ApplicationController
  def create
    if params[:video_id]
      comment = Comment.create(
        :content => comment_params[:content],
        :commentable_type => 'Video',
        :commentable_id => params[:video_id]
      )
      redirect_to "/videos/#{params[:video_id]}"
    else
      comment = Comment.create(
        :content => comment_params[:content],
        :commentable_type => 'Sound',
        :commentable_id => params[:sound_id]
      )
      redirect_to "/sounds/#{params[:sound_id]}"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    if params[:video_id]
      redirect_to "/videos/#{params[:video_id]}"
    else
      redirect_to "/sounds/#{params[:sound_id]}"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end