import merge from 'lodash/merge';
import { StoryConstants } from '../actions/story_actions';

const ElementReducer = (state = {}, action) => {
  switch (action.type) {
    case StoryConstants.RECEIVE_STORY:
      return Object.assign({}, action.story.elements);
    default:
      return state;
  }
};

export default ElementReducer;
