import { normalize } from 'normalizr';
import { photo, arrayOfTextPhotos } from '../actions/schema';
import { receiveErrors, receivePhoto, PhotoConstants } from '../actions/photo_actions';
import PhotoUtil from '../util/photo_api_util';

export default({ getState, dispatch }) => next => action => {
  const photoCreatedSuccess = photo => console.log("good job");
  const photoDestroyedSuccess = photo => console.log("goodbye photo");

  switch (action.type) {
    case PhotoConstants.CREATE_PHOTO:
      console.log("middleware: ");
      console.log(action);
      PhotoUtil.createPhoto(action.photo, photoCreatedSuccess);
      return next(action);
    case PhotoConstants.DESTROY_PHOTO:
      PhotoUtil.deletePhoto(action.photo,photoDestroyedSuccess);
      return next(action);
      break;
    default:
      return next(action);
  }
};
