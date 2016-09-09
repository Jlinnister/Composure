json.stories do @story
    json.extract!(@story, :id, :title, :description, :cover_image_id, :user_id, :created_at)

    if @story.cover_image
      json.cover_image_url @story.cover_image.url
      json.cover_image_med @story.cover_image.med_url
    else
      json.cover_image_url 'http://bestgiftstoreever.com/wp-content/uploads/2015/10/grey-box.jpg'
      json.cover_image_med 'http://bestgiftstoreever.com/wp-content/uploads/2015/10/grey-box.jpg'
    end
end

json.elements do @elements
  json.array!(@elements) do |element|

    if element.has_attribute? "url"
      json.extract!(element, :id, :url, :med_url, :position, :group_position, :full_width, :story_id, :created_at)
    else
      json.extract!(element, :id, :title, :body, :position, :story_id, :created_at)
    end
  end
end
