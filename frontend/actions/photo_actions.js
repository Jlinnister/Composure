export const PhotoConstants = {
  CREATE_PHOTO: 'CREATE_PHOTO',
  CREATE_COVER_PHOTO: 'CREATE_COVER_PHOTO',
  RECEIVE_COVER_PHOTO: 'RECEIVE_COVER_PHOTO',
  RECEIVE_PHOTOS: 'RECEIVE_PHOTOS',
  DESTROY_PHOTO: 'DESTROY_PHOTO',
};

export const createPhoto = photo => ({
  type: PhotoConstants.CREATE_PHOTO,
  photo,
});

export const createCoverPhoto = photo => ({
  type: PhotoConstants.CREATE_COVER_PHOTO,
  photo,
});

export const receiveCoverPhoto = photo => ({
  type: PhotoConstants.RECEIVE_COVER_PHOTO,
  photo,
});

export const receivePhotos = photo => ({
  type: PhotoConstants.RECEIVE_PHOTOS,
  photo,
});

export const destroyPhoto = photo => ({
  type: PhotoConstants.DESTROY_PHOTO,
  photo,
});
