## Component Hierarchy

##### Login Container
- Login component

##### Sign Up Container
- Sign Up component

##### Photo Story Index Container
- Photo Story index component

##### Photo Story Show Container
- Photo Story show component

##### Splash Container
- Splash NavBar component
- Welcome component
- Features component
- Examples component
- Footer component

##### User Profile Container
- User NavBar component
  - Create Story
  - Edit Profile modal component
  - Sign Out
- Photo Story Index

##### Story Show Container
- Story Show NavBar component
  - Edit Story
  - My Storyboard
- Photo Story show

##### New Story Container
- Story New NavBar component
  - Save Story
  - My Storyboard
- Create Main component
  - Cover component
  - Photo components
  - Text components
- Buttons component

##### Edit Story Container
- Story Edit NavBar component
  - Save Changes
  - Delete Story
  - My Storyboard
- Create Main component
  - Cover component
  - Photo components
    - Remove button component
  - Text components
    - Remove button component
- Buttons component

##### Routes
| Path | Container |
|---|---|
| / | SplashContainer |
| /signup | SignUpContainer |
| /login | LoginContainer |
| /profile/:id | UserProfileContainer |
| /profile/:id/:storyId | StoryShowContainer |
| /profile/:id/:storyId/edit | EditStoryContainer |
| /new | newStoryContainer |
