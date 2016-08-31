import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import TextAreaReducer from './text_area_reducer';
import StoryReducer from './story_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  stories: combineReducers({ text_area: TextAreaReducer,
    story: StoryReducer,
   }),

});


  // combineReducers({
  //   story: StoryReducer,
  //   text_area: TextAreaReducer,
  // }),



export default RootReducer;
