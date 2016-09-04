import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryIndexItem from './storyboard_index_item';

export default class StoryboardIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestStories();
  }

  render() {
    const { stories } = this.props;
    const { current_user } = this.props;
    return (
      <div className="container-fluid storyboard-container">
        <div className="profile-details">
          <div className="profile-avatar"><img src={current_user.avatar_url} /></div>
          <div className="profile-title">{current_user.profile_title}</div>
          <div className="profile-description">{current_user.profile_description}</div>
          <div className="profile-line"></div>
        </div>
        <div className="stories">
            {Object.keys(stories).map(key => <StoryIndexItem story={stories[key]} />)}
        </div>
      </div>
    );
  }
}
