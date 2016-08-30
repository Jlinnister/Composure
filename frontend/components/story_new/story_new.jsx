import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryNewNav from './story_new_nav';
import StoryTextItemContainer from '../story_elements/story_text_item_container';

export default class StoryNew extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <StoryNewNav current_user={this.props.current_user} />
        <StoryTextItemContainer />
        <div>Storyboard</div>
      </div>
    );
  }
}
