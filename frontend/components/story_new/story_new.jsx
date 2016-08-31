import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryNewNav from './story_new_nav';
import StoryTextItem from '../story_elements/story_text_item';
import merge from 'lodash/merge';

const _nullStory = Object.freeze({
  title: '',
  body: '',
  position: null,
  story_id: null, //ensure story_id in database model for text area
});

export default class StoryNew extends React.Component {
  constructor(props) {
    super(props);
    this.state = { storyParts: [
      Object.assign({}, _nullStory),
    ] };
    this.createTextArea = this.createTextArea.bind(this);
    this.setPartState = this.setPartState.bind(this);
  }

  setPartState(index, field, content) {
    const newState = merge({}, this.state);
    const storyPart = newState.storyParts[index];
    storyPart[field] = content;
    this.setState(newState);
  }

  createTextArea() {
    const newState = merge({}, this.state);
    newState.storyParts.push(Object.assign({}, _nullStory));
    this.setState(newState);
    console.log(this.state);
  }

  render() {
    return (
      <div>
        <StoryNewNav current_user={this.props.current_user} />
        <div className="container story-parts">
          {this.state.storyParts.map((part, idx) => (
            <StoryTextItem part={part} key={idx} setPartState={(field,content) => this.setPartState(idx,field,content)}/>
          ))}
        </div>

        <div className="btn btn-primary add-text-area" onClick={this.createTextArea}>Add Text Area</div>
      </div>
    );
  }
}
