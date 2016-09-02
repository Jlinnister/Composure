import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryNewNav from './story_new_nav';
import StoryTextItem from '../story_elements/story_text_item';
import merge from 'lodash/merge';

export default class StoryNew extends React.Component {
  constructor(props) {
    super(props);
    this.state = { storyParts: [] };
    this.createTextArea = this.createTextArea.bind(this);
    this.setPartState = this.setPartState.bind(this);
    this.createStory = this.createStory.bind(this);
    this.blankStory = this.blankStory.bind(this);
  }

  setPartState(index, field, content) {
    const newState = merge({}, this.state);
    const storyPart = newState.storyParts[index];
    storyPart[field] = content;
    this.setState(newState);
  }

  blankStory() {
    return (
      Object.freeze({
        title: '',
        body: '',
        position: this.state.storyParts.length + 1,
        story_id: null, //ensure story_id in database model for text area
      })
    );
  }

  createStory(e) {
    e.preventDefault();
    console.log(this.state.storyParts);
    this.props.createTextArea(this.state.storyParts)
  }

  createTextArea() {
    const newState = merge({}, this.state);
    newState.storyParts.push(Object.assign({}, this.blankStory()));
    this.setState(newState);
    console.log(this.state.storyParts);
  }

  render() {
    return (
      <div>
        <form onSubmit={this.createStory} className="story-form" id="save-form">
          <StoryNewNav current_user={this.props.current_user} />
          <div className="cover-image"></div>

            <div className="story-parts">
              {this.state.storyParts.map((part, idx) => (
                <StoryTextItem part={part} key={idx} setPartState={(field,content) => this.setPartState(idx,field,content)}/>
              ))}
            </div>
        </form>

        <div className="add-elements">
          <nav>
            <ul className="options">
              <li className="add-text-area" onClick={this.createTextArea}>
                Add Text Area
              </li>
            </ul>
          </nav>
        </div>

      </div>
    );
  }
}
