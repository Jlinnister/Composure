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

  componentWillMount() {
    this.props.requestStory(this.props.params.storyId);
    this.props.requestStories();
    console.log(this.props);
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
    const story_id = this.props.params.storyId
    const story = this.props.stories[story_id]

    if (story) {
      return (
        <div>
            <StoryShowNav current_user={this.props.current_user} />

              <div className="cover-image"><img src={story.cover_image_url} /></div>
              <div className="details">
                <div className="story-show-title">{story.title}</div>
                <div className="story-show-description">{story.description}</div>
              </div>

              <div className="story-parts">
                {this.state.storyParts.map((part, idx) => (
                  <StoryTextItem part={part} key={idx} setPartState={(field,content) => this.setPartState(idx,field,content)}/>
                ))}
              </div>
        </div>
      )
    } else {
      return (<div></div>)
    }

  }
}
