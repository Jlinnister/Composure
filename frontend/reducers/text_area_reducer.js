import merge from 'lodash/merge';
import { TextAreaConstants } from '../actions/text_area_actions';

const TextAreaReducer = (state = {}, action) => {
  switch (action.type) {
    case TextAreaConstants.RECEIVE_TEXT_AREA:
      const newTextArea = { [action.text_area.id]: action.text_area };
      return Object.assign({}, state, newTextArea);
    case TextAreaConstants.DESTROY_TEXT_AREA:
      let newState = Object.assign({}, state);
      delete newState[action.text_area.id];
      return newState;
    // case TextAreaConstants.RECEIVE_ERRORS:
    //   const errors = action.errors;
    //   return merge({}, _nullUser, errors);
    default:
      return state;
  }
};

export default TextAreaReducer;
