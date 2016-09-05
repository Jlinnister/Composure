import merge from 'lodash/merge';
import { StoryConstants } from '../actions/story_actions';

const StoryReducer = (state = {}, action) => {
  switch (action.type) {
    case StoryConstants.RECEIVE_STORIES:
      let newStories = {};
      action.stories.forEach(story => newStories[story.id] = story);
      return Object.assign({}, state, newStories);
    case StoryConstants.RECEIVE_STORY:
      let newStory
      if (action.story.stories) {
        newStory = {[action.story.stories.id]: action.story.stories};
      } else {
        newStory = {[action.story.id]: action.story};
      }
      return Object.assign({}, state, newStory);
    case StoryConstants.DESTROY_STORY:
      let newState = Object.assign({}, state);
      delete newState[action.story.id];
      return newState;
    // case StoryConstants.RECEIVE_ERRORS:
    //   const errors = action.errors;
    //   return merge({}, _nullUser, errors);
    default:
      return state;
  }
};

export default StoryReducer;
