import merge from 'lodash/merge';
import { SessionConstants } from '../actions/session_actions';

const _nullUser = Object.freeze({
  current_user: null,
  errors: [],
});

const SessionReducer = (state = _nullUser, action) => {
  switch (action.type) {
    case SessionConstants.RECEIVE_CURRENT_USER:
      const current_user = action.currentUser;
      console.log(current_user);
      return merge({}, _nullUser, { current_user });
    case SessionConstants.LOGOUT:
      return merge({}, _nullUser);
    case SessionConstants.RECEIVE_ERRORS:
      const errors = action.errors;
      return merge({}, _nullUser, errors);
    default:
      return state;
  }
};

export default SessionReducer;
