## Component Hierarchy

##### Splash Container
- Welcome component
- Splash NavBar component
- About component
- Examples component
- Footer component

##### Login Container
- Login component

##### Sign Up Container
- Sign Up component

------------------------------------------------------
##### User Index Container
- User NavBar component
- Photo Story Index

##### Photo Story Index Container
- Photo Story index component
- Photo Story index item component
  - Link to Photo Story show

------------------------------------------------------
##### Story Show Container
- Story Show NavBar component
  - Edit Story
  - My Storyboard
- Photo Story show

##### Photo Story Show Container
- Photo Story show component

------------------------------------------------------
##### Story New and Edit Nav Bar Container
- New and edit nav bar component
  - Save Changes
  - Delete Story
  - My Storyboard

##### Photo Story New and Edit Container (has state for editable boolean)
  - PhotoGroup component
  - FullWidthPhoto component
  - TextOnlyGroup component

##### New and Edit Story Container
- Story New and Edit NavBar
- Photo story new and edit
- Buttons component

##### Story Buttons Container
- Story buttons component
  - 'Add a photo group' button
  - 'Add a full-width photo' button
  - 'Add a text-only group' button

##### Routes
| Path | Container |
|---|---|
| / | SplashContainer |
| /signup | SignUpContainer |
| /login | LoginContainer |
| /storyboard/:id | UserIndexContainer |
| /storyboard/:id/:storyId | StoryShowContainer |
| /storyboard/:id/:storyId/edit | EditStoryContainer |
| /new | newStoryContainer |
