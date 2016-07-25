class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      if @comment.save
        format.html{redirect_to recipe_path( @comment.recipe_id), notice: 'Comment was successfully created.'}
      else
        format.html { redirect_to recipe_path}
      end
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:comment_entry, :recipe_id, :user_id)
  end
end
