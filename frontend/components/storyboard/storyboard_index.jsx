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
        <div className="row profile-details">
          <div className="profile-avatar">Avatar picture here</div>
          <div className="profile-title">Profile Title</div>
          <div className="profile-description">Description of my profile</div>
        </div>
        <div className="row stories">
          <ul className="story-list">
            {Object.keys(stories).map(key => <StoryIndexItem story={stories[key]} />)}
          </ul>
        </div>
      </div>
    );
  }
}
