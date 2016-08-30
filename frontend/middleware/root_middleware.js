import { applyMiddleware } from 'redux';

import SessionMiddleware from './session_middleware';
import TextAreaMiddleware from './text_area_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  TextAreaMiddleware
);

export default RootMiddleware;
