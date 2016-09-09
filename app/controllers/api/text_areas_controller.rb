class Api::TextAreasController < ApplicationController
  def index
    @text_areas = current_user.text_areas
    render "api/text_areas/index"
  end

  def create
    @text_areas = TextArea.create(parse_text_areas(text_area_params))
      render "api/text_areas/show"
  end

  def update
    textAreas = text_area_params
    TextArea.update(textAreas.keys, textAreas.values)
    render "api/text_areas/show"
  end

  def destroy
    @text_area = TextArea.find(params[:id])
    @text_area.destroy
    render json: {}
  end

  private
  def text_area_params
    params.require(:text_area).permit!
  end

  def parse_text_areas(text_area_params)
    text_areas = []
    text_area_params.keys.each do |key|
        text_areas << text_area_params[key]
    end
    text_areas
  end
end
