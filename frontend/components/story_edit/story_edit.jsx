import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryEditNav from './story_edit_nav';
import StoryTextItem from '../story_elements/story_text_item';
import StoryPhotoItem from '../story_elements/story_photo_item';
import merge from 'lodash/merge';

export default class StoryEdit extends React.Component {
  constructor(props) {
    super(props);
    this.state = { storyParts: [],
                   coverImageUrl: this.props.stories[this.props.params.storyId].cover_image_url,
                   story: {
                     title: this.props.stories[this.props.params.storyId].title,
                     description: this.props.stories[this.props.params.storyId].description,
                     cover_image_id: this.props.stories[this.props.params.storyId].cover_image_id,
                     user_id: this.props.current_user.id,
                     id: this.props.params.storyId,
                   },
                 };

    this.addCoverPhoto = this.addCoverPhoto.bind(this);
    this.addPhoto = this.addPhoto.bind(this);
    this.createTextArea = this.createTextArea.bind(this);
    this.setPartState = this.setPartState.bind(this);
    this.saveAllElements = this.saveAllElements.bind(this);
    this.blankTextArea = this.blankTextArea.bind(this);
  }

  addPhoto() {
    cloudinary.openUploadWidget(window.CLOUDINARY_SETTINGS, (error, images) => {
      if (error === null) {
        images.forEach(image => {
          const photo = {
            url: image.url,
            med_url: image.url,
            story_id: this.props.stories[Object.keys(this.props.stories)[Object.keys(this.props.stories).length-1]].id,
            position: this.state.storyParts.length + 1,
            group_position: images.length,
            full_width: false
          }
          this.props.createPhoto(photo);
          const newState = merge({}, this.state);
          newState.storyParts.push(photo);
          this.setState(newState);
        });
      }
    });
  }

  addCoverPhoto() {
    cloudinary.openUploadWidget(window.CLOUDINARY_SETTINGS, (error, images) => {
      if(error === null) {
        const photo = {
          url: images[0].url,
          med_url: images[0].url,
          story_id: this.props.stories[Object.keys(this.props.stories)[Object.keys(this.props.stories).length-1]].id,
          position: this.state.storyParts.length + 1,
          group_position: images.length,
          full_width: false,
        };
        this.props.createCoverPhoto(photo);
        const newState = merge({}, this.state);
        newState.coverImageUrl = photo.url;
        this.setState(newState);
      }
    });
  }


  setPartState(index, field, content) {
    const newState = merge({}, this.state);
    const storyPart = newState.storyParts[index];
    storyPart[field] = content;
    this.setState(newState);
  }

  blankTextArea() {
    return (
      Object.freeze({
        title: '',
        body: '',
        position: this.state.storyParts.length + 1,
        story_id: this.props.stories[Object.keys(this.props.stories)[Object.keys(this.props.stories).length-1]].id
      })
    );
  }

  saveAllElements(e) {
    e.preventDefault();
    const store = this.context.store.getState()
    const story = this.state.story;
    story.cover_image_id = store.photos.id
    console.log(story);
    this.props.updateStory(story);

    const textParts = []
    this.state.storyParts.forEach(part => {
      if (part.title) {
        textParts.push(part);
      }
    });

    this.props.createTextArea(textParts);
    hashHistory.push('/storyboard');
  }

  createTextArea() {
    const newState = merge({}, this.state);
    newState.storyParts.push(Object.assign({}, this.blankTextArea()));
    this.setState(newState);
  }

  update(field) {
    return e => {
      const newStory = merge({}, this.state.story);
      newStory[field] = e.currentTarget.value;
      this.setState({ story: newStory });
    };
  }

  render() {
    const story_id = this.props.params.storyId
    const story = this.props.stories[story_id]
    console.log(this.props);
    if (story) {
    return (
      <div>
        <form onSubmit={this.saveAllElements} className="story-form" id="save-form">
          <StoryEditNav current_user={this.props.current_user} />
          <div className="cover-image">
            <img src={this.state.coverImageUrl} />
            <div className="details">
              <button id="story-cover-photo" onClick={this.addCoverPhoto}>Click to Add or Edit Cover Photo</button>
              <div><input type="text" id="story-title" onChange={this.update("title")} value={this.state.story.title} /></div>
              <div><textarea id="story-description" onChange={this.update("description")} value={this.state.story.description} /></div>
            </div>
          </div>

            <div className="story-parts">
              {this.state.storyParts.map((part, idx) => {
                if (part.url) {
                  return ( <StoryPhotoItem part={part} key={idx} /> )
                } else {
                  return ( <StoryTextItem part={part} key={idx} setPartState={(field,content) => this.setPartState(idx,field,content)}/> )
                }
              }
            )}
            </div>
        </form>

        <div className="add-elements">
          <nav>
            <ul className="options">
              <li className="add-photo" onClick={this.addPhoto}>
                Add Photos
              </li>
              <li className="add-text-area" onClick={this.createTextArea}>
                Add Text Area
              </li>
            </ul>
          </nav>
        </div>

      </div>
    )
  } else {
    return (<div></div>)
  }
  }
}

StoryEdit.contextTypes = {
  store: React.PropTypes.object.isRequired,
};
