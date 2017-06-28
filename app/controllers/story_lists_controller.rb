class StoryListsController < ApplicationController
  def index
    @story_lists = StoryList.all

  end

  def show
    @story_list = StoryList.find(params[:id])
    render :show
  end

  def new
   @story_list = StoryList.new
   render :new
 end

 def create
    @story_list = StoryList.new(story_list_params)
    if @story_list.save
      redirect_to  story_lists_path
    else
      render :new
    end
  end

  def edit
      @story_list = StoryList.find(params[:id])
      render :edit
    end

    def update
    @story_list= StoryList.find(params[:id])
    if @story_list.update(story_list_params)
      redirect_to story_lists_path
    else
      render :edit
    end
  end

  def destroy
     @story_list = StoryList.find(params[:id])
     @story_list.destroy
     redirect_to story_lists_path
   end

private
  def story_list_params
    params.require(:story_list).permit(:name,:description)
  end

end
