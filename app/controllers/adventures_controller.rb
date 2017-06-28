class AdventuresController < ApplicationController
  def create
    @story_list = StoryList.find(params[:story_list_id])
    @adventure = @story_list.adventures.new(adventure_params)
    if @adventure.save
      redirect_to list_path(@adventure.story_list)
    else
      render :new
    end
  end

private
  def adventure_params
    params.require(:adventure).permit(:name, :description, :image)
  end
end
