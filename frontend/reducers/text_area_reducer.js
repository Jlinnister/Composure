import merge from 'lodash/merge';
import { TextAreaConstants } from '../actions/text_area_actions';

const TextAreaReducer = (state = {}, action) => {
  switch (action.type) {
    case TextAreaConstants.RECEIVE_TEXT_AREA:
      // const textAreas = {}
      // action.text_area.forEach( item => textAreas[item.id] = item )
      return Object.assign({}, state, action.text_area.entities.text_areas);
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
