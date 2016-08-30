import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryNewNav from './story_new_nav';

export default class StoryNew extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <StoryNewNav current_user={this.props.current_user} />
        <div>Storyboard</div>
      </div>
    );
  }
}
