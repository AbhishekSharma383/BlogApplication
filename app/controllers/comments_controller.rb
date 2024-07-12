# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  
  before_action :set_post

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      redirect_to @post, alert: 'Error creating comment.'
    end
  end


  def destroy
    # @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    ap @comment.id
    @comment.destroy

   redirect_to post_path(@post), notice: 'Comment was successfully destroyed.'
  end

  private


  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end