class Api::TextAreasController < ApplicationController
  def create
    @text_area = TextArea.new(text_area_params)

    if @text_area.save
      render "api/text_areas/show"
    else
      @errors = ["Text area can't be blank"]
      render "api/shared/errors", status: 422
    end
  end

  # def show
  #   @text_area = User.find_by_username(params[:id])
  #
  #   if @text_area
  #     render "api/users/show"
  #   else
  #     render json: nil, status: 404
  #   end
  # end

  def update
    @text_area = TextArea.find(params[:id])
    @text_area.update(text_area_params)
    render "api/text_areas/show"
  end

  def destroy
    @text_area = TextArea.find(params[:id])
    @text_area.destroy
    render json: {}
  end

  private

  def text_area_params
    params.require(:text_area).permit(:title, :body, :position, :story_id)
  end

end
