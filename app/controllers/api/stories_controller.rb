class Api::StoriesController < ApplicationController
  def index
    @stories = current_user.stories
    @stories = @stories.select { |story| story.title != "default" }
    render "api/stories/index"
  end

  def create
    @story = current_user.stories.new(story_params)
    if @story.save
      render json: @story
    else
      render json: @story.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @story = Story.find(params[:id])
    @elements = @story.sort_photos_and_texts
    @elements.select! { |element| element.id != @story.cover_image_id }
    render "api/stories/show"
  end

  def update
    @story = current_user.stories.find(params[:id])
    if @story.update(story_params)
      render json: @story
    else
      render json: @story.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @story = current_user.stories.find(params[:id])
    @story.destroy
    render json: {}
  end

  private
    def story_params
      params.require(:story).permit(:title, :description, :cover_image_id, :user_id)
    end
end
