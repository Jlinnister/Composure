import { connect } from 'react-redux';
import Storyboard from './storyboard';
import { logout, updateUser } from '../../actions/session_actions';

const mapStateToProps = state => ({
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
  current_user: state.session.current_user,
});

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  updateUser: user => dispatch(updateUser(user)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Storyboard);
