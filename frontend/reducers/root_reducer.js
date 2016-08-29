import { combineReducers } from 'redux';

const RootReducer = combineReducers({
  current_user: SessionReducer,
});

export default RootReducer;
