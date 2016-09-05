import { connect } from 'react-redux';
import StoryEdit from './story_edit';
import * as TextAreaActions from '../../actions/text_area_actions';
import * as StoryActions from '../../actions/story_actions';
import * as PhotoActions from '../../actions/photo_actions';

const mapStateToProps = state => ({
  parts: state.parts,
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
  current_user: state.session.current_user,
  stories: state.stories,
  photos: state.photos,
});

const mapDispatchToProps = (dispatch) => ({
  createTextArea: text_area => dispatch(TextAreaActions.createTextArea(text_area)),
  updateTextArea: text_area => dispatch(TextAreaActions.updateTextArea(text_area)),
  destroyTextArea: text_area => dispatch(TextAreaActions.destroyTextArea(text_area)),
  createStory: story => dispatch(StoryActions.createStory(story)),
  updateStory: story => dispatch(StoryActions.updateStory(story)),
  createPhoto: photo => dispatch(PhotoActions.createPhoto(photo)),
  createCoverPhoto: photo => dispatch(PhotoActions.createCoverPhoto(photo)),
  destroyPhoto: photo => dispatch(PhotoActions.destroyPhoto(photo)),
  destroyStory: story => dispatch(StoryActions.destroyStory(story)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryEdit);
