import { connect } from 'react-redux';
import StoryShow from './story_show';
import * as StoryActions from '../../actions/story_actions';

const mapStateToProps = state => ({
  parts: state.parts,
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
  current_user: state.session.current_user,
  stories: state.stories,
});

const mapDispatchToProps = (dispatch) => ({
  requestStory: id => dispatch(StoryActions.requestStory(id)),
  requestStories: () => dispatch(StoryActions.requestStories()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryShow);
