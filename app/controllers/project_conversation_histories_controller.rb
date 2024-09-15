class ProjectConversationHistoriesController < ApplicationController
    
    def show
       @project_conversation_history = ProjectConversationHistory.find(params[:id])
       @coment = Comment.new 
    end

    def new 
        @project_conversation_history = ProjectConversationHistory.new  
    end

    def create 
        @project_conversation_history = ProjectConversationHistory.create(
            project_conversation_history_params
            )

        if @project_conversation_history && @project_conversation_history.valid? 
            flash[:notice] = 'Project conversation was successfully created.'
            redirect_to @project_conversation_history
        else
            render :new
        end
    end

    def edit
        @project_conversation_history = ProjectConversationHistory.find(params[:id])
    end

    def update
        @project_conversation_history = ProjectConversationHistory.find(params[:id])

        if @project_conversation_history.update(project_conversation_history_params)
            redirect_to project_conversation_history_path @project_conversation_history
        else
            render 'edit'
        end
    end

    def search
        @query = params[:query]
        @project_conversation_histories = if @query.present?
            ProjectConversationHistory.where('title LIKE?', "%#{@query}%")
        else 
            ProjectConversationHistory.all
        end
    end

    private

    def project_conversation_history_params
        params.require(:project_conversation_history).permit(:title, :project_status)
    end

    
end


