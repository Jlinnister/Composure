import { normalize } from 'normalizr';
import { textArea, arrayOfTextAreas } from '../actions/schema';
import { receiveErrors, receiveTextArea, TextAreaConstants } from '../actions/text_area_actions';
import TextAreaUtil from '../util/text_area_api_util';

export default({ getState, dispatch }) => next => action => {
  const textAreaCreatedSuccess = text_area => {
    dispatch(receiveTextArea(normalize(text_area, arrayOfTextAreas)));
  };

  const textAreaDestroyedSuccess = () => {};
  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    dispatch(receiveErrors(errors));
  };

  switch (action.type) {
    case TextAreaConstants.CREATE_TEXT_AREA:
      TextAreaUtil.create(action.text_area, textAreaCreatedSuccess, errorCallback);
      return next(action);
    case TextAreaConstants.DESTROY_TEXT_AREA:
      TextAreaUtil.delete(action.text_area,textAreaDestroyedSuccess, errorCallback);
      return next(action);
      break;
    case TextAreaConstants.UPDATE_TEXT_AREA:
      TextAreaUtil.update(action.text_area, textAreaCreatedSuccess, errorCallback);
      return next(action);
    default:
      return next(action);
  }
};
