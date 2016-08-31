import { connect } from 'react-redux';
import StoryboardIndex from './storyboard_index';
import { requestStories } from '../../actions/story_actions';

const mapStateToProps = state => ({
  stories: state.stories,
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
  current_user: state.session.current_user,
});

const mapDispatchToProps = (dispatch) => ({
  requestStories: () => dispatch(requestStories()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryboardIndex);
