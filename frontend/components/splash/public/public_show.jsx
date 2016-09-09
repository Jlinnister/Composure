import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryTextItem from '../../story_elements/story_text_item';
import merge from 'lodash/merge';

export default class PublicShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillUnmount() {
    this.props.clearStories();
  }

  partsContainer() {
    let parts = []
    let photoParts = []
    Object.keys(this.props.parts).forEach((key, idx) => {
      let el = this.props.parts[key];
      if (el.full_width !== undefined && el.full_width === true) {
        parts.push(<div className="full-width-photo" key={`group-${idx}`}><div className="story-photo-item" key={`${el.id}-image`} ><img src={el.url} /></div></div>)
      } else if (el.url) {
        photoParts.push(<div className="story-photo-item" key={`${el.id}-image`} ><img src={el.url} /></div>)
        if (Object.keys(this.props.parts).length - 1 < idx + 1 || (this.props.parts[Object.keys(this.props.parts)[idx + 1]].title === '' || this.props.parts[Object.keys(this.props.parts)[idx + 1]].title) || (el.group_position !== this.props.parts[Object.keys(this.props.parts)[idx + 1]].group_position)) {
          parts.push(<div className="photo-group" key={`group-${idx}`}>{photoParts}</div>);
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
    let story_id
    if (this.props.location.pathname === "/the-real-steel"){
      story_id = 11
    }
    const story = this.props.stories[story_id]

    if (story) {
      return (
        <div>
          <div className="public-cover-image"><img src={story.cover_image_url} /></div>
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
