# json.array!(@story) do |story|

json.stories do @story
    json.extract!(@story, :id, :title, :description, :cover_image_id, :user_id, :created_at)

    # time = Time.parse(story.event_date.to_s)
    # json.string_date time.strftime("%B #{time.day.ordinalize}, %Y")

    if @story.cover_image
      json.cover_image_url @story.cover_image.url
      json.cover_image_med @story.cover_image.med_url
    else
      json.cover_image_url 'http://images.media-allrecipes.com/userphotos/250x250/00/26/28/262801.jpg'
      json.cover_image_med 'http://images.media-allrecipes.com/userphotos/250x250/00/26/28/262801.jpg'
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
