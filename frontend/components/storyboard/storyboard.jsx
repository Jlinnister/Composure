import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryboardNav from './storyboard_nav';

export default class Storyboard extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <StoryboardNav logout={this.props.logout} current_user={this.props.current_user} />
        <div>Storyboard</div>
      </div>
    );
  }
}
