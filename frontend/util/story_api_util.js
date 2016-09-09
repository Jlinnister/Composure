const StoryUtil = {
  fetchStories(success) {
    $.ajax({
      method: 'GET',
      url: 'api/stories',
      success,
    });
  },

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
