class Api::PhotosController < ApplicationController
  # def index
  #   @photos = current_user.photos
  #   render "api/photos/index"
  # end
  #
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      render "api/photos/show"
    else
      debugger
    end
  end

  # def show
  #   @photo = Album.includes(:subalbums, :photos).find(params[:id])
  #
  #   if @photo.user_id == current_user.id
  #     render :show
  #   else
  #     render json: "not your photo", status: :forbidden
  #   end
  # end
  #
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
