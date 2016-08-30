import { connect } from 'react-redux';
import Signup from './signup';
import { login, logout, signup } from '../../actions/session_actions';

const mapStateToProps = state => ({
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
});

const mapDispatchToProps = (dispatch) => ({
  signup: user => dispatch(signup(user)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Signup);
