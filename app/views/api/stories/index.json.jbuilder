json.array!(@stories) do |story|
  json.extract!(story, :id, :title, :description, :cover_image_id, :user_id, :created_at)

  # time = Time.parse(story.event_date.to_s)
  # json.string_date time.strftime("%B #{time.day.ordinalize}, %Y")

  if story.cover_image
    json.cover_image_url story.cover_image.url
    json.cover_image_med story.cover_image.med_url
  else
    json.cover_image_url 'http://images.media-allrecipes.com/userphotos/250x250/00/26/28/262801.jpg'
    json.cover_image_med 'http://images.media-allrecipes.com/userphotos/250x250/00/26/28/262801.jpg'
  end
end
