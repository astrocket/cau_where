class CommentsController < ApplicationController
  before_action :set_comment, only: :destroy

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    @comment.destroy
  end

  private

  def set_comment
    @commentable = find_commentable
    @comment = @commentable.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:name, :content)
  end

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
