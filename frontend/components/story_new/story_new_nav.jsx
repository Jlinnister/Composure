import React from 'React';
import { Link, hashHistory } from 'react-router';

export default class StoryNewNav extends React.Component {
  constructor(props) {
    super(props);
    this.destroyStory = this.destroyStory.bind(this);
  }

  onClick() {
    e.preventDefault()
    document.getElementById("save-form").submit();
  }

  destroyStory() {
    this.props.destroyStory(this.props.story);
    hashHistory.push("/storyboard");
  }

  render() {
    return (
      <div className="storynew-nav">
        <nav>
          <Link to="/" className="logo pull-left">COMPOSURE</Link>

          <ul className="options pull-right">
            <li className="delete-story-link" onClick={this.destroyStory}>Delete Story</li>
            <li className="save-changes-link"><input className="story-save-form-control" type="submit" value="Save Changes" /></li>
            <Link to="/storyboard"><li className="storyboard-link">My Storyboard</li></Link>
          </ul>
        </nav>
      </div>
    );
  }
}
