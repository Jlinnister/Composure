import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryShowNav from './story_show_nav';
import StoryTextItem from '../story_elements/story_text_item';
import merge from 'lodash/merge';

const _nullStory = Object.freeze({
  title: '',
  body: '',
  position: 1,
  story_id: 1, //ensure story_id in database model for text area
});

export default class StoryShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = { storyParts: [
      Object.assign({}, _nullStory),
    ] };
    this.createTextArea = this.createTextArea.bind(this);
    this.setPartState = this.setPartState.bind(this);
    this.createStory = this.createStory.bind(this);
  }

  componentDidMount() {
    this.props.requestStory();
  }


  setPartState(index, field, content) {
    const newState = merge({}, this.state);
    const storyPart = newState.storyParts[index];
    storyPart[field] = content;
    this.setState(newState);
  }

  createStory(e) {
    e.preventDefault();
    console.log(this.state.storyParts);
    this.props.createTextArea(this.state.storyParts)
  }

  createTextArea() {
    const newState = merge({}, this.state);
    newState.storyParts.push(Object.assign({}, _nullStory));
    this.setState(newState);
    console.log(this.state.storyParts);
  }

  render() {
    return (
      <div>
          <StoryShowNav current_user={this.props.current_user} />

          <div className="cover-image"></div>

            <div className="story-parts">
              {this.state.storyParts.map((part, idx) => (
                <StoryTextItem part={part} key={idx} setPartState={(field,content) => this.setPartState(idx,field,content)}/>
              ))}
            </div>
      </div>
    );
  }
}
