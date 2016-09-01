import { connect } from 'react-redux';
import StoryShow from './story_show';
import * as StoryActions from '../../actions/story_actions';

const mapStateToProps = state => ({
  loggedIn: !!state.session.current_user,
  errors: state.session.errors,
  current_user: state.session.current_user,
});

const mapDispatchToProps = (dispatch) => ({
  requestStory: story => dispatch(StoryActions.requestStory(story)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryShow);
