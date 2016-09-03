import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import TextAreaReducer from './text_area_reducer';
import StoryReducer from './story_reducer';
import PhotoReducer from './photo_reducer';
import ElementReducer from './element_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  stories: StoryReducer,
  text_area: TextAreaReducer,
  photos: PhotoReducer,
  parts: ElementReducer,
});


export default RootReducer;
