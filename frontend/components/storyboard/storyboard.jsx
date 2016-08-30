import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryboardNav from './storyboard_nav';

export default class Storyboard extends React.Component {
  constructor(props) {
    super(props);
    // this.handleSubmit = this.handleSubmit.bind(this);
  }

  // handleSubmit(e) {
  //   e.preventDefault();
  //   this.props.logout();
  // }

  render() {
    return (
      <div>
        <StoryboardNav />
        <div>Storyboard</div>
      </div>
    );
  }
}
