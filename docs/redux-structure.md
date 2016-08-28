## Redux Structure

#### Auth Cycles
##### Session API Middleware Request Actions
- signUp
  - invoked from `SignUpContainer` sign up form `onSubmit`
  - `POST` ajax request at `/api/users`  
  - `receiveCurrentUser` is set as the ajax request success callback function
- logIn
  - invoked from `LogInContainer` login form `onSubmit`
  - `POST` ajax request at `/api/session`  
  - `receiveCurrentUser` is set as the ajax request success callback function
- logOut
  - invoked from `UserIndexContainer` nav bar sign out button `onClick`
  - `DELETE` ajax request at `/api/session`  
  - `removeCurrentUser` is set as the ajax request success callback function

##### Session API Response Actions
- `receiveCurrentUser`
  - invoked from middleware `signUp` and `logIn` success callback
  - `SessionReducer` stores `current_user` in the application's state
- `removeCurrentUser`
  - invoked from middleware `logOut` success callback
  - `SessionReducer` removes `current_user` from the application's state

#### Error Cycles
##### Error API Response Actions
- setErrors
  - invoked from API error callback functions on error for actions that generate POST requests (`signUp`,`logIn`,`createStory`,`updateStory`)
  - the `ErrorReducer` stores the form in the application's state; errors are mapped to their respective forms
- logIn
  - invoked from `LogInContainer` login form `onSubmit`
  - `POST` ajax request at `/api/session`  
  - `receiveCurrentUser` is set as the ajax request success callback function

#### Story Cycles
##### Story API Middleware Request Actions
- fetchAllStories
  - invoked from `UserIndexContainer` `onEnter`/`didMount`/`willReceiveProps`
  - `GET` `/api/stories` is called
    - queries for stories where stories user_id = current_user.id  
  - receiveAllStories is set as the ajax request success callback function

- createStory
  - invoked from `NewStoryContainer` `StoryNewNavBar` Save Story button onClick
  - `POST` `/api/stories` is called
  - receiveSingleStory is set as the ajax request success callback function

- fetchSingleStory
  - invoked from `UserIndexContainer` `PhotoStoryIndexContainer` `PhotoStoryIndexItem` `onClick`
  - `GET` `/api/stories/:id` is called
  - receiveSingleStory is set as the the ajax request success callback function

- updateStory
  - invoked from `EditStoryContainer` `StoryEditNavBar` Save Changes button onClick
  - `POST` `/api/stories` is called
  - receiveSingleStory is set as the the ajax request success callback function

- destroyStory
  - invoked from `NewStoryContainer` or `EditStoryContainer` `StoryNewEditNavBar` Delete Story button onClick
  - `DELETE` `/api/story/:id` is called
  - `removeStory` is set as the ajax request success callback function

##### Story API Response Actions
- receiveAllStories
  - invoked from middleware `fetchAllStories` success callback
  - the `storiesReducer` updates `stories` in the application's state

- receiveSingleStory
  - invoked from middleware `createStory`, `fetchSingleStory`, `updateStory` success callback
  - the `storiesReducer` updates `stories[id]` in the application's state

-removeStory
  - invoked from middleware `destroyStory` success callback
  - the `storiesReducer` removes `stories[id]` in the application's state
