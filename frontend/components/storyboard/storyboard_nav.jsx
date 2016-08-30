import React from 'React';
import { Link, hashHistory } from 'react-router';

export default class StoryboardNav extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit() {
    this.props.logout();
  }

  render() {
    return (
      <div className="storyboard-nav">
        <nav>
          <ul className="options pull-right">
            <li className="new-story-link">New Story</li>
            <li className="edit-profile-link">Edit Profile</li>
            <Link to="/"><li className="signout-link" onClick={this.handleSubmit.bind(null)}>Sign Out</li></Link>
          </ul>
        </nav>
      </div>
    );
  }
}
