import { connect } from 'react-redux';
import Login from './login';
import { login, logout, signup } from '../../actions/session_actions';

const mapStateToProps = state => ({
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
});

const mapDispatchToProps = (dispatch) => ({
  login: user => dispatch(login(user)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Login);
