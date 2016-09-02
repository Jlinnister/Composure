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
    elements = self.photos + self.text_areas
    merge_sort(elements)
  end

  private
  def merge_sort(array)
    return array if array.count < 2

    middle = array.count / 2

    left, right = array.take(middle), array.drop(middle)
    sorted_left, sorted_right = merge_sort(left), merge_sort(right)

    merge(sorted_left, sorted_right)
  end

  def merge(left, right)
    merged_array = []
    until left.empty? || right.empty?
      merged_array <<
        ((left.first.position < right.first.position) ? left.shift : right.shift)
    end

    merged_array + left + right
  end

end
