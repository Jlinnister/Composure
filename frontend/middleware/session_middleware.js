import { receiveErrors, receiveCurrentUser, SessionConstants } from '../actions/session_actions';
import SessionUtil from '../util/session_api_util';

export default({ getState, dispatch }) => next => action => {
  const successCallback = user => dispatch(receiveCurrentUser(user));
  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    dispatch(receiveErrors(errors));
  };

  switch (action.type) {
    case SessionConstants.LOGIN:
      SessionUtil.login(action.user, successCallback, errorCallback);
      return next(action);
    case SessionConstants.LOGOUT:
      SessionUtil.logout(() => next(action));
      break;
    case SessionConstants.SIGNUP:
      SessionUtil.signup(action.user, successCallback, errorCallback);
      return next(action);
    default:
      return next(action);
  }
};
