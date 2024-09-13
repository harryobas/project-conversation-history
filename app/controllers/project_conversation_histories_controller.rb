class ProjectConversationHistoriesController < ApplicationController
    
    def show_single
        @project_conversation_history = ProjectConversationHistory.first_or_create(
            title: "Building Project",
            project_status: "pending"
            )
        @comment = Comment.new  
    end

    def edit
        @project_conversation_history = ProjectConversationHistory.find(params[:id])
    end

    def update
        @project_conversation_history = ProjectConversationHistory.find(params[:id])

        if @project_conversation_history.update(project_conversation_history_params)
            redirect_to root_path
        else
            render 'edit'
        end
    end

    private

    def project_conversation_history_params
        params.require(:project_conversation_history).permit(:project_status)
    end

    
end


