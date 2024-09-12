class ProjectConversationHistoriesController < ApplicationController
    
    def show
        @project_conversation_history = ProjectConversationHistory.find(params[:id])
    end

    def edit
        @project_conversation_history = ProjectConversationHistory.find(params[:id])

    def create 
        @project_conversation_history = ProjectConversationHistory.new(project_conversation_history_params)
        if @project_conversation_history.save
            redirect_to @project_conversation_history
        else
            render 'new'
        end
    end

    def update
        @project_conversation_history = ProjectConversationHistory.find(params[:id])

        if @project_conversation_history.update(project_conversation_history_params)
            redirect_to @project_conversation_history
        else
            render 'edit'

    private

    def project_conversation_history_params
        params.require(:project_conversation_history).permit(:project_status)
    end

    
end


