import merge from 'lodash/merge';
import { StoryConstants } from '../actions/story_actions';

const ElementReducer = (state = {}, action) => {
  switch (action.type) {
    case StoryConstants.RECEIVE_STORY:
    console.log(action.story);
      return Object.assign({}, state, action.story);
    default:
      return state;
  }
};

export default ElementReducer;