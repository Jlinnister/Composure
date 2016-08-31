export const StoryConstants = {
  REQUEST_STORY: 'REQUEST_STORY',
  REQUEST_STORIES: 'REQUEST_STORIES',
  CREATE_STORY: 'CREATE_STORY',
  UPDATE_STORY: 'UPDATE_STORY',
  DESTROY_STORY: 'DESTROY_STORY',
  RECEIVE_STORY: 'RECEIVE_STORY',
  RECEIVE_STORIES: 'RECEIVE_STORIES',
  RECEIVE_ERRORS: 'RECEIVE_ERRORS',
};

export const requestStories = () => ({
  type: StoryConstants.REQUEST_STORIES,
});

export const requestStory = id => ({
  type: StoryConstants.REQUEST_STORY,
  id,
});

export const createStory = story => ({
  type: StoryConstants.CREATE_STORY,
  story,
});

export const updateStory = story => ({
  type: StoryConstants.UPDATE_STORY,
  story,
});

export const destroyStory = story => ({
  type: StoryConstants.DESTROY_STORY,
  story,
});

export const receiveStory = story => ({
  type: StoryConstants.RECEIVE_STORY,
  story,
});

export const receiveStories = stories => ({
  type: StoryConstants.RECEIVE_STORIES,
  stories,
});

export const receiveErrors = errors => ({
  type: StoryConstants.RECEIVE_ERRORS,
  errors,
});
