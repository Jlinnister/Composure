class Api::StoriesController < ApplicationController
  def index
    @stories = current_user.stories
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
    @story = current_user.stories.find(params[:id])
    @elements = @story.sort_photos_and_texts
    @elements.select! { |element| element.id != @story.cover_image_id }
    render "api/stories/show"
  end

  def update
    @story = current_user.stories.find(params[:id])
    debugger
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

    # def must_be_logged_in
    #   if !logged_in?
    #     render text: "Must be logged in.", status: :forbidden
    #   end
    # end
    #
    # def must_be_album_owner
    #   if current_user != Album.find(params[:id]).owner
    #     render text: "Must be logged in.", status: :forbidden
    #   end
    # end
end
