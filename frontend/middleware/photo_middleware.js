import { normalize } from 'normalizr';
import { photo, arrayOfTextPhotos } from '../actions/schema';
import { receiveErrors, receivePhoto, receiveCoverPhoto, PhotoConstants } from '../actions/photo_actions';
import PhotoUtil from '../util/photo_api_util';

export default({ getState, dispatch }) => next => action => {
  const photoCreatedSuccess = photo => {};
  const coverPhotoCreatedSuccess = photo => dispatch(receiveCoverPhoto(photo));
  const photoDestroyedSuccess = photo => {};

  switch (action.type) {
    case PhotoConstants.CREATE_PHOTO:
      PhotoUtil.createPhoto(action.photo, photoCreatedSuccess);
      return next(action);
    case PhotoConstants.CREATE_COVER_PHOTO:
      PhotoUtil.createPhoto(action.photo, coverPhotoCreatedSuccess);
      return next(action);
    case PhotoConstants.DESTROY_PHOTO:
      PhotoUtil.deletePhoto(action.photo,photoDestroyedSuccess);
      return next(action);
      break;
    default:
      return next(action);
  }
};
