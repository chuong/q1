class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    @idea = Idea.new
  end

  def create
    @idea = Idea.create(idea_params)
    if @idea.valid?
      redirect_to ideas_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  helper_method :current_idea
  def current_idea
    @current_idea ||= Idea.find(params[:id])
  end

  def idea_params
    params.require(:idea).permit(:what, :usage)
  end

end
