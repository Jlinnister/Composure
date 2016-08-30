import { connect } from 'react-redux';
import StoryNew from './story_new';
import { logout } from '../../actions/session_actions';

const mapStateToProps = state => ({
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
  current_user: state.session.current_user,
});

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryNew);
