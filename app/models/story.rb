class Story < ActiveRecord::Base
  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: :user_id
  )

  belongs_to(
  :cover_image,
  class_name: 'Photo',
  foreign_key: 'cover_image_id'
)

  has_many(
    :text_areas,
    class_name: 'TextArea',
    foreign_key: :story_id,
    dependent: :destroy
  )

  has_many(
    :photos,
    class_name: 'Photo',
    foreign_key: :story_id,
    dependent: :destroy
  )

  validates :title, :user_id, :cover_image_id, presence: true

  def sort_photos_and_texts
    positioned = []
    story = current_user.stories.find(params[:id])
    photos = story.photos.order(:position)
    text_areas = story.text_areas.order(:position)
    photos.each do { |photo| photo.sort
  end

end
