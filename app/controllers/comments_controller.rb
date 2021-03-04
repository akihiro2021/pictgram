class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @topic_id = params[:topic_id]
  end

  def create
    @comment = Comment.new
    @comment.topic_id = params[:topic_id]
    @comment.content = params[:content]

    if 
      redirect_to topics_path, success: 'コメントに成功しました' 
    else
      flash.now[:danger] = "コメントに失敗しました"
      render :new
    end
  end
end
