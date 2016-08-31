class TextArea < ActiveRecord::Base
  belongs_to(
  :story,
  class_name: 'Story',
  foreign_key: :story_id
)

# has_one(
#   :owner,
#   through: :album,
#   source: :owner
# )
validates :position, :story_id, presence: true

end
