class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    flash[:notice] = "Succesfully deleted tag '#{@tag.name}'"

    redirect_to tags_path
  end
end
