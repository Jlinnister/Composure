class Photo < ActiveRecord::Base
  belongs_to(
    :story,
    class_name: 'Story',
    foreign_key: :story_id
)

  has_one(
    :owner,
    through: :story,
    source: :owner
  )

validates :url, :med_url, :position, :group_position, :story_id, presence: true

end
