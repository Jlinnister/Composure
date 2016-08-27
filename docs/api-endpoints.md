## API Endpoints

| Prefix | Type | URI | Controller Action |
|-------|-------------|
| root | GET | / | static_pages#index

##### Users
| Prefix | Type | URI | Controller Action |
|-------|-------------|
| api_users | POST | api/users | api_users#create
| api_user | GET | api/users/:id | api_users#show

##### Sessions
| Prefix | Type | URI | Controller Action |
|-------|-------------|
| api_session | POST | api/session | api_session#create
| api_session | DELETE | api/session | api_session#destroy

##### Stories
| Prefix | Type | URI | Controller Action |
|-------|-------------|
| api_stories | GET | api/stories | api_stories#index
| api_stories | POST | api/stories | api_stories#create
| api_story | GET | api/stories/:id | api_stories#show
| api_story | PATCH | api/stories/:id | api_stories#update
| api_story | DELETE | api/stories/:id | api_stories#destroy

##### Photos
| Prefix | Type | URI | Controller Action |
|-------|-------------|
| api_photos | POST | api/photos | api_stories#create
| api_photo | DELETE | api/photos/:id | api_stories#destroy

##### Text Areas
| Prefix | Type | URI | Controller Action |
|-------|-------------|
| api_text_areas | POST | api/text_areas | api_stories#create
| api_text_area | DELETE | api/text_areas/:id | api_stories#destroy
