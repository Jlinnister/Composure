const PhotoUtil = {
  deletePhoto(photo, success) {
    $.ajax({
      url: `/api/photos/${photo.id}`,
      method: 'DELETE',
      success,
    });
  },

  createPhoto(photo, success) {
    $.ajax({
      url: '/api/photos',
      method: 'POST',
      dataType: 'json',
      data: { photo },
      success,
    });
  },
};

export default PhotoUtil;
