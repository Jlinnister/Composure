import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';

const RootReducer = combineReducers({
  current_user: SessionReducer,
});

export default RootReducer;
