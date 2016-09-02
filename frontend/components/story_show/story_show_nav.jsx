import React from 'React';
import { Link, hashHistory } from 'react-router';

export default class StoryShowNav extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="storyboard-nav">
        <nav>
          <ul className="options pull-right">
            <li className="edit-profile-link">Edit Story</li>
            <Link to="/storyboard"><li className="storyboard-link">My Storyboard</li></Link>
          </ul>
        </nav>
      </div>
    );
  }
}
