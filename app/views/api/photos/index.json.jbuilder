json.array!(@photos) do |photo|
  json.extract!(photo, :id, :url, :med_url, :position, :group_position, :full_width, :story_id)
end
