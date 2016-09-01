# json.extract! @text_areas, :id, :title, :body, :position, :story_id
json.array! @photos, :id, :url, :med_url, :position, :group_position, :full_width, :story_id
