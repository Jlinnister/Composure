# Composure

## Minimum Viable Product
Composure.me is a web application inspired by Exposure.co for sharing and discovering beautifully generated photo stories. Technologies used to create Composure will include a React.js with Redux front-end, the Ruby on Rails framework and a PostgreSQL backend. By the end of week 9, Composure.me will satisfy the following requirements:

- [ ] Hosted on Heroku with a custom domain
- [ ] User account creation, login and logout
  - Guest account access
- [ ] Photo Stories
  - Ability to Create, Read, Update and Delete
  - Users can add Cover Photo, Title and Subtitle
  - Users can add photos
  - Users can add text
- [ ] User profiles
  - User homepage shows avatar, profile title, profile description and stories
  - Stories are displayed in grid format with cover photo, title, subtitle and date
  - Ability to edit avatar, profile title and profile description
- [ ] Auto styling of 'Photo Story' layout
  - Includes buttons to add a group of photos, a full-width photo and text group
  - Text group has optional heading and text area
  - A photo group is auto-justified based on number of photos
  - A full-width photo will stretch or resize to fill or fit respectively
- [ ] Dynamic splash page
  - Navigation bar includes 'Welcome', 'About', 'Examples', 'Login' and 'Sign Up' links
  - 'Welcome', 'About' and 'Examples' links scroll down to appropriate section
  - 'Login' and 'Sign Up' links redirect to appropriate form page
  - 'Guest Login' link redirects to 'Login' form and auto fills
  - Navigation bar includes 'My Storyboard' link in place of 'Login' and 'Sign Up' for logged in users
- [ ] Production README

## Design Documents
* [View Wireframes][wireframes]
* [React Components][components]
* [API endpoints][api-endpoints]
* [Database schema][schema]
* [Redux Structure][redux-structure]
* [Sample State][sample-state]

[wireframes]: ./docs/wireframes/
[components]: ./docs/component-hierarchy-revision.md
[redux-structure]: ./docs/redux-structure.md
[sample-state]: ./docs/sample-state.md
[api-endpoints]: ./docs/api-endpoints.md
[schema]: ./docs/schema.md
[redux-structure]: ./docs/redux-structure.md
[sample-state]: ./docs/sample-state.md
[Implementation Timeline]: ./docs/phases
