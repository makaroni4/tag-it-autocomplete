class TagsController < ApplicationController
  def show
    @tag = Tag.find_by_name(params[:id])
  end
  
  def autocomplete
    tags = Tag.autocomplete_data(params[:q])
    
    respond_to do |format|
      format.json { render :json => tags }
    end
  end
end