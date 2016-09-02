json.array!(@elements) do |element|

  if element.has_attribute? "url"
    json.extract!(element, :id, :url, :med_url, :position, :group_position, :full_width, :story_id, :created_at)
  else
    json.extract!(element, :id, :title, :body, :position, :story_id, :created_at)
  end
end
