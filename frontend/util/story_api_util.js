const StoryUtil = {
  fetchStories(success) {
    $.ajax({
      method: 'GET',
      url: 'api/stories',
      success,
    });
  },

  //  if api fetches all stories and saves to store, do I need this???
  fetchStory(id, success) {
    $.ajax({
      method: 'GET',
      url: `api/stories/${id}`,
      success,
    });
  },

  createStory(story, success, error) {
    $.ajax({
      method: 'POST',
      url: 'api/stories',
      data: { story },
      success,
      error,
    });
  },

  updateStory(story, success) {
    console.log(story);
    $.ajax({
      method: 'PATCH',
      url: `api/stories/${story.id}`,
      data: { story },
      success,
    });
  },

  destroyStory(story, success) {
    $.ajax({
      method: 'DELETE',
      url: `api/stories/${story.id}`,
      success,
    });
  },
};

export default StoryUtil;
