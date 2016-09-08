import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryShowNav from './story_show_nav';
import StoryTextItem from '../story_elements/story_text_item';
import merge from 'lodash/merge';

export default class StoryShow extends React.Component {
  constructor(props) {
    super(props);
  }

  partsContainer() {
    let parts = []
    let photoParts = []
    let counter = 0
    Object.keys(this.props.parts).forEach((key, idx) => {
      let el = this.props.parts[key];
      if (el.url) {
        counter++;
        photoParts.push(<div id={el.group_position} key={`${el.id}-image`} ><img src={el.url} /></div>)
        if (el.group_position === counter) {
            parts.push(<div className="photo-group" key={`group-${idx}`}>{photoParts}</div>);
            counter = 0;
            photoParts = []
        }
      } else {
          if (el.title && el.body) {
            parts.push(<div key={`${el.id}-text`}><div className="text-area-title" key={`${el.id}-title`}>{el.title}</div><div className="text-area-body" key={`${el.id}-body`}>{el.body}</div></div>)
          } else if (el.title) {
            parts.push(<div className="text-area-title" key={`${el.id}-title`}>{el.title}</div>)
          } else if (el.body) {
            parts.push(<div className="text-area-body" key={`${el.id}-body`}>{el.body}</div>)
          }
      }
    });
    return parts;
  }

  render() {
    const story_id = this.props.params.storyId
    const story = this.props.stories[story_id]

    if (story) {
      return (
        <div>
          <StoryShowNav current_user={this.props.current_user} storyId={story_id} />
          <div className="cover-image"><img src={story.cover_image_url} /></div>
          <div className="details">
            <div className="story-show-title">{story.title}</div>
            <div className="story-show-description">{story.description}</div>
          </div>

          <div className="story-elements">
            { this.partsContainer()}
          </div>
        </div>
      )
    } else {
      return (<div></div>)
    }

  }
}
