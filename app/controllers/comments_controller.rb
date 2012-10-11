class CommentsController < ApplicationController
  def create
    @confession = Confession.find(params[:confession_id])
    @comment = @confession.comments.create(params[:comment])
    redirect_to confession_path(@confession)
  end
  
  def destroy
    @confession = Confession.find(params[:confession_id])
    @comment = @confession.comments.find(params[:id])
    @comment.destroy
    redirect_to confession_path(@confession)
  end

end