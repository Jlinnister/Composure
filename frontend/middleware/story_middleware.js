import StoryUtil from '../util/story_api_util';
import { normalize, Schema, arrayOf } from 'normalizr';
import { receiveStory,
         receiveStories,
         destroyStory,
         receiveErrors,
         StoryConstants } from '../actions/story_actions';

// const story = new Schema('stories');
// const text_area = new Schema('text_areas');
//
// story.define({
//   text_areas: arrayOf(text_area),
// });

export default({ getState, dispatch }) => next => action => {
  const storiesSuccess = response => {
    return dispatch(receiveStories(response));
  };

  const storySuccess = story => dispatch(receiveStory(story));
  const storyDestroyedSuccess = story => dispatch(destroyStory(story));
  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    dispatch(receiveErrors(errors));
  };

  switch (action.type) {
    case StoryConstants.CREATE_STORY:
      StoryUtil.createStory(action.story, storySuccess, errorCallback);
      return next(action);
    case StoryConstants.DESTROY_STORY:
      StoryUtil.destroyStory(action.story, storyDestroyedSuccess, errorCallback);
      return next(action);
      break;
    case StoryConstants.UPDATE_STORY:
      StoryUtil.updateStory(action.story, storySuccess, errorCallback);
      return next(action);
    case StoryConstants.REQUEST_STORIES:
      StoryUtil.fetchStories(storiesSuccess);
      break;
    case StoryConstants.REQUEST_STORY:
      StoryUtil.fetchStory(action.id, storySuccess);
      break;
    default:
      return next(action);
  }
};
