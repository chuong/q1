class IdeasController < ApplicationController
  def index
    @idea = Idea.first
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  helper_method :current_idea
  def current_idea
    @current_idea ||= Idea.find(params[:id])
  end

end
