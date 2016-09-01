import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryIndexItem from './storyboard_index_item';

export default class StoryboardIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  onClick() {
  }

  componentDidMount() {
    this.props.requestStories();
  }

  render() {
    const { stories } = this.props;
    return (
      <div className="container-fluid storyboard-container">
        <div className="profile-details">
          <div className="profile-avatar">Avatar picture here</div>
          <div className="profile-title">Profile Title</div>
          <div className="profile-description">Description of my profile</div>
          <div className="profile-line"></div>
        </div>
        <div className="stories">
            {Object.keys(stories).map(key => <StoryIndexItem story={stories[key]} />)}
        </div>
      </div>
    );
  }
}
