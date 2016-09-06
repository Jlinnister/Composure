json.array!(@stories) do |story|
  json.extract!(story, :id, :title, :description, :cover_image_id, :user_id, :created_at)

  # time = Time.parse(story.event_date.to_s)
  # json.string_date time.strftime("%B #{time.day.ordinalize}, %Y")

  if story.cover_image
    json.cover_image_url story.cover_image.url
    json.cover_image_med story.cover_image.med_url
  else
    json.cover_image_url 'http://bestgiftstoreever.com/wp-content/uploads/2015/10/grey-box.jpg'
    json.cover_image_med 'http://bestgiftstoreever.com/wp-content/uploads/2015/10/grey-box.jpg'
  end
end
