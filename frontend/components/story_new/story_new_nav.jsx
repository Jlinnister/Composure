import React from 'React';
import { Link, hashHistory } from 'react-router';

export default class StoryNewNav extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit() {
    // this.props.logout();
  }

  render() {
    return (
      <div className="storynew-nav">
        <nav>
          <ul className="options pull-right">
            <li className="delete-story-link">Delete Story</li>
            <li className="save-changes-link">Save Changes</li>
            <Link to="/storyboard"><li className="storyboard-link">My Storyboard</li></Link>
          </ul>
        </nav>
      </div>
    );
  }
}
