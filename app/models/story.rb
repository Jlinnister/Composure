class Story < ActiveRecord::Base
  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: :user_id
  )

#   belongs_to(
#   :cover_image,
#   class_name: 'Photo',
#   foreign_key: 'cover_image_id'
# )

  has_many(
    text_areas:,
    class_name: 'TextArea',
    foreign_key: :story_id,
    dependent: :destroy
  )

  # has_many(
  #   photos:,
  #   class_name: 'Photo',
  #   foreign_key: :story_id,
  #   dependent: :destroy
  # )

  validates :title, :user_id, :cover_image_id, presence: true
end
