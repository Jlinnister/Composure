export const PhotoConstants = {
  CREATE_PHOTO: 'CREATE_PHOTO',
  DESTROY_PHOTO: 'DESTROY_PHOTO',
};

export const createPhoto = photo => ({
  type: PhotoConstants.CREATE_PHOTO,
  photo,
});

export const destroyPhoto = photo => ({
  type: PhotoConstants.DESTROY_TEXT_AREA,
  photo,
});
