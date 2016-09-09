# Composure

[Composure.me][link]
[link]: http://www.composure.me
Composure.me is a web application inspired by Exposure.co for creating beautifully generated photo stories. Technologies used to create Composure include a React.js with Redux front-end, the Ruby on Rails framework and a PostgreSQL backend.
<br><br>
<img src="https://cloud.githubusercontent.com/assets/15305961/18375862/b9cef2a4-760e-11e6-9ca5-ec643747ad28.png" >
<br><br><br>

### Stories
Composure allows users to easily showcase their photography through as 'Photo Stories'. Users are able to add a title and description to their story along with an uploaded cover image. Stories are then created with a mixture of full-width photos, photo-groups and text groups.
<br><br>
<img src="https://cloud.githubusercontent.com/assets/15305961/18375864/b9d661f6-760e-11e6-963d-4c2bdbfd09a0.png">
<br><br><br>

### Photos
The core component of Composure lies in the rendering and styling of photos. Users can choose between uploading multiple groups of photos or a single full-width photo into their story. Groups of photos are intelligently resized to display in-line. Additionally, removing photos from a group in a story will resize the remaining photos in the group. This logic is handled by storing photo group ids in the backend and on the re-render of the front-end component.
<br><br>
<img src="https://cloud.githubusercontent.com/assets/15305961/18375861/b9ce4430-760e-11e6-9516-dfa88d152a1a.png">
<br><br><br>

### Text groups
Users have the ability to complement their photography with text groups. Text groups have an optional title and body that can be inserted and removed from anywhere in the story. The CRUD process is batch handled in Rails in order to improve efficiency.

### Storyboard
The storyboard is where users are able to view the photo stories that they have created. Additionally, users can customize their profile through a modal pop-up. Options include uploading an avatar picture, adding a profile title and a profile description.
<br><br>
<img src="https://cloud.githubusercontent.com/assets/15305961/18375863/b9d44d30-760e-11e6-81a0-26ed7cae7a85.png">
<br><br><br>

### Additional Features
Future features to include in Composure would be the ability to have rich-text formatting for story text groups, allowing users to 'drag and drop' photo-groups and text-groups when editting their stories and a discovery section that curates users' stories along with the functionality to search by story title or user.
