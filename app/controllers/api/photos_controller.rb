class Api::PhotosController < ApplicationController
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      render "api/photos/show"
    end
  end

  def update
    @photo = current_user.photos.find(params[:id])

    if @photo.update(photo_params)
      render :show
    else
      render json: @photo.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @photo = current_user.photos.find(params[:id])
    @photo.destroy
    render json: {}
  end

  private
    def photo_params
      params.require(:photo).permit!
    end

    def parse_photos(photo_params)
      photos = []
      photo_params.keys.each do |key|
          photos << photo_params[key]
      end
      photos
    end
end
