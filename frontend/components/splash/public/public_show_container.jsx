import { connect } from 'react-redux';
import PublicShow from './public_show';
import * as StoryActions from '../../../actions/story_actions';

const mapStateToProps = state => ({
  parts: state.parts,
  stories: state.stories,
});

const mapDispatchToProps = (dispatch) => ({
  requestStory: id => dispatch(StoryActions.requestStory(id)),
  clearStories: () => dispatch(StoryActions.clearStories()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PublicShow);
