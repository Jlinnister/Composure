import merge from 'lodash/merge';
import { PhotoConstants } from '../actions/photo_actions';

const PhotoReducer = (state = {}, action) => {
  switch (action.type) {
    case PhotoConstants.RECEIVE_COVER_PHOTO:
      return Object.assign({}, state, action.photo);
    case PhotoConstants.RECEIVE_PHOTOS:
      return Object.assign({}, state, action.photo);
    default:
      return state;
  }
};

export default PhotoReducer;
