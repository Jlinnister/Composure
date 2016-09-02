import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryShowNav from './story_show_nav';
import StoryTextItem from '../story_elements/story_text_item';
import merge from 'lodash/merge';

export default class StoryShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    // this.props.requestStories();
    // this.props.requestStory(this.props.params.storyId);
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
        </div>
      )
    } else {
      return (<div></div>)
    }

  }
}
