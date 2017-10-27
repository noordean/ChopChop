class CommentsController < ApplicationController
  def comment
    comment = Comment.new
    comment.poster = User.find_by(id: session[:user_id]).name
    comment.content = comment_param[:content]
    if comment.save
      redirect_to root_path
    end
  end
  def comment_param
    params.require(:comment).permit(:content)
  end
end
