import { connect } from 'react-redux';
import StoryNew from './story_new';
import * as TextAreaActions from '../../actions/text_area_actions';

const mapStateToProps = state => ({
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
  current_user: state.session.current_user,
});

const mapDispatchToProps = (dispatch) => ({
  createTextArea: text_area => dispatch(TextAreaActions.createTextArea(text_area)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryNew);
