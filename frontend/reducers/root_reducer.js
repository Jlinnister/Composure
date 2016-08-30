import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import TextAreaReducer from './text_area_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  text_area: TextAreaReducer,
});

export default RootReducer;
