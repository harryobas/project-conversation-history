class CommentsController < ApplicationController
    def new 
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @conversation_history = ProjectConversationHistory.find(params[:id])
        @conversation_history.comments << @comment
        if @comment.save
            redirect_to root_path, notice: 'Comment was successfully created.'
        else

end
