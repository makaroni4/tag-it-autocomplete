class SubmitsController < ApplicationController
  def index
    @submits = Submit.all
  end
  
  def new
    @submit = Submit.new
    @tags = Tag.random(2).map(&:name)
  end
  
  def create
    submit = Submit.new(params[:submit])
    if submit.save
      redirect_to submits_path
    else
      redirect_to new_submits_path
    end
  end
end