import React from 'React';
import { Link, hashHistory } from 'react-router';

export default class StoryEditNav extends React.Component {
  constructor(props) {
    super(props);
    this.deleteStory = this.deleteStory.bind(this);
  }

  deleteStory() {
    console.log("deleted!");
  }

  render() {
    return (
      <div className="storynew-nav">
        <nav>
          <ul className="options pull-right">
            <li className="delete-story-link" onClick={this.deleteStory}>Delete Story</li>
            <li className="save-changes-link"><input className="story-save-form-control" type="submit" value="Save Changes" /></li>
            <Link to="/storyboard"><li className="storyboard-link">My Storyboard</li></Link>
          </ul>
        </nav>
      </div>
    );
  }
}
