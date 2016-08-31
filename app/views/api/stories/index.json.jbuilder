json.array!(@stories) do |story|
  json.extract!(story, :id, :title, :description, :cover_image_id, :user_id, :created_at)

  # time = Time.parse(story.event_date.to_s)
  # json.string_date time.strftime("%B #{time.day.ordinalize}, %Y")

  # if story.cover_image
  #   json.cover_image_url story.cover_image.image_url
  #   json.cover_image_med story.cover_image.medium_url
  # else
  #   json.cover_image_url 'http://res.cloudinary.com/twinkieset/image/upload/v1434583156/Screen_Shot_2015-06-17_at_4.18.43_PM_uptlhi.png'
  #   json.cover_image_med 'http://res.cloudinary.com/twinkieset/image/upload/c_fit,w_1000/v1434583156/Screen_Shot_2015-06-17_at_4.18.43_PM_uptlhi.png'
  # end
end
