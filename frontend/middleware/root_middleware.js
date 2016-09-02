import { applyMiddleware } from 'redux';

import SessionMiddleware from './session_middleware';
import TextAreaMiddleware from './text_area_middleware';
import StoryMiddleware from './story_middleware';
import PhotoMiddleware from './photo_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  StoryMiddleware,
  TextAreaMiddleware,
  PhotoMiddleware
);

export default RootMiddleware;
