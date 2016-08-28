## Schema

##### Users
| Column Name | Data Type | Details |
|---|---|---|
| id | integer | not null, primary key
| username | string | not null, indexed, unique
| email | string | not null, indexed, unique
| avatar_url | string |
| profile_title | string |
| profile_description | text |
| password_digest | string | not null
| session_token | string | not null, indexed, unique

##### Stories
| Column Name | Data Type | Details |
|---|---|---|
| id | integer | not null, primary key
| title | string | not null
| description | text |
| user_id | integer | not null, foreign key(users), indexed
| cover_image_id | string | not null, foreign key(photos), indexed
| date_created | string |


##### Photos
| Column Name | Data Type | Details |
|---|---|---|
| id | integer | not null, primary key
| url | string | not null
| medium_url | string |
| position | integer | not null
| full_width | boolean | not null, default: false
| story_id | integer | not null, foreign key(stories), indexed

##### Text Areas
| Column Name | Data Type | Details |
|---|---|---|
| id | integer | not null, primary key
| title | string |
| body | text |
| position | integer | not null
| story_id | integer | not null, foreign key(stories), indexed
