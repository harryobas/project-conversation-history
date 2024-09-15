class CommentsController < ApplicationController
    def new 
        @comment = Comment.new
        @project_conversation_history = ProjectConversationHistory.find(
            params[:project_conversation_history_id]
            )
    end

    def create
        @project_conversation_history = ProjectConversationHistory.find(params[:project_conversation_history_id])
        @comment = @project_conversation_history.comments.build(comment_params)
        if @comment.save
            redirect_to @project_conversation_history, notice: 'Comment was successfully added.'
        else
            render :new
        end
    end

    private 

    def comment_params
        params.require(:comment).permit(:body)  
    end
    

end
