import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryShowNav from './story_show_nav';
import StoryTextItem from '../story_elements/story_text_item';
import merge from 'lodash/merge';

let imageCount = 1;

export default class StoryShow extends React.Component {
  constructor(props) {
    super(props);
    this.renderElements = this.renderElements.bind(this);
  }

  renderElements(el) {
    if (el.url) {
      el.group_position > imageCount ? imageCount = el.group_position : null;
      return (<div className={imageCount} key={el.id}><img src={el.url} /></div>)
    } else {
        imageCount = 1;
      return (<div className="text-area">{el.body}</div>)
    }
  }

  render() {
    const story_id = this.props.params.storyId
    const story = this.props.stories[story_id]
    console.log(this.props);

    if (story) {
      return (
        <div>
          <StoryShowNav current_user={this.props.current_user} />
          <div className="cover-image"><img src={story.cover_image_url} /></div>
          <div className="details">
            <div className="story-show-title">{story.title}</div>
            <div className="story-show-description">{story.description}</div>
          </div>

          <div className="story-elements">
            { Object.keys(this.props.parts).map(key => this.renderElements(this.props.parts[key])) }
          </div>
        </div>
      )
    } else {
      return (<div></div>)
    }

  }
}
