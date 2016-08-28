## Component Hierarchy

##### Login Container
- Login component

##### Sign Up Container
- Sign Up component

##### Photo Story Index Container
- Photo Story index component
- Photo Story index item component
  - Link to Photo Story show

##### Photo Story Show Container
- Photo Story show component

##### Story Buttons Container
- Story buttons component
  - 'Add a photo group' button
  - 'Add a full-width photo' button
  - 'Add a text-only group' button

##### Story New and Edit Nav Bar Container
- New and edit nav bar component
  - Save Changes
  - Delete Story
  - My Storyboard

##### Photo Story Edit Container
- Photo Story edit component
  - Utilizes Photo Story show component
  - Adds 'Edit Cover Image' button
  - Landing 'Title' and 'Subtitle' text areas are editable (no option to remove - required)
  - Additional text areas are editable
  - Adds 'Remove Text' buttons under 'Story' text area elements
    - Removes text area and reformats on-click
  - Adds 'Remove' button under 'Story' photos on hover
    - Removes photo and resizes on-click
    - Removes section if no photos remain
  - Photo Story button component
    - 'Add a photo group' button
    - 'Add a full-width photo' button
    - 'Add a text-only group' button

##### Photo Story New Container
  - Photo Story new component
    - Utilizes Photo Story edit component
    - Adds 'Add Cover Image' button
    - Landing 'Title' and 'Subtitle' text areas are editable (no option to remove - required)
      - Includes default filler text
    - Adds default text area with title and subtitle
      - Includes default filler text
    - Additional text areas are editable
    - Adds 'Remove Text' buttons under 'Story' text area elements
      - Removes text area and reformats on-click
    - Adds 'Remove' button under 'Story' photos on hover
      - Removes photo and resizes on-click
      - Removes section if no photos remain
    - Photo Story button component
      - 'Add a photo group' button
      - 'Add a full-width photo' button
      - 'Add a text-only group' button

##### Splash Container
- Splash NavBar component
- Welcome component
- About component
- Examples component
- Footer component

##### User Index Container
- User NavBar component
  - New Story
  - Edit Profile modal component
  - Sign Out
- Photo Story Index

##### Story Show Container
- Story Show NavBar component
  - Edit Story
  - My Storyboard
- Photo Story show

##### New Story Container
- Story New and Edit NavBar
- Photo story new
- Buttons component

##### Edit Story Container
- Story new and Edit NavBar
- Photo story edit
- Buttons component

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
