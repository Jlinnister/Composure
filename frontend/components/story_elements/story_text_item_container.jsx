import { connect } from 'react-redux';
import StoryTextItem from './story_text_item';
import * as TextAreaActions from '../../actions/text_area_actions';

const mapStateToProps = state => ({
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
  current_user: state.session.current_user,
});

const mapDispatchToProps = (dispatch) => ({
  createTextArea: text_area => dispatch(TextAreaActions.createTextArea(text_area)),
  updateTextArea: text_area => dispatch(TextAreaActions.updateTextArea(text_area)),
  destroyTextArea: text_area => dispatch(TextAreaActions.destroyTextArea(text_area)),
  receiveTextArea: text_area => dispatch(TextAreaActions.receiveTextArea(text_area)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryTextItem);
