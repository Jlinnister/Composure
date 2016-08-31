import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import TextAreaReducer from './text_area_reducer';
import StoryReducer from './story_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  stories: StoryReducer,
  text_area: TextAreaReducer,
});


export default RootReducer;
