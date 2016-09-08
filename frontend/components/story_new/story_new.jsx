import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryNewNav from './story_new_nav';
import StoryTextItem from '../story_elements/story_text_item';
import StoryPhotoItem from '../story_elements/story_photo_item';
import merge from 'lodash/merge';

export default class StoryNew extends React.Component {
  constructor(props) {
    super(props);
    this.state = { storyParts: [],
                   coverImageUrl: '',
                   photoGroupId: 1,
                   story: {
                     title: 'default',
                     description: '',
                     cover_image_id: 0,
                     user_id: this.props.current_user.id,
                    //  id: this.props.stories[Object.keys(this.props.stories)[Object.keys(this.props.stories).length-1]].id + 1,
                   },
                   error: [],
                 };

    this.addCoverPhoto = this.addCoverPhoto.bind(this);
    this.addPhoto = this.addPhoto.bind(this);
    this.createTextArea = this.createTextArea.bind(this);
    this.setPartState = this.setPartState.bind(this);
    this.saveAllElements = this.saveAllElements.bind(this);
    this.blankTextArea = this.blankTextArea.bind(this);
    this.removeTextArea = this.removeTextArea.bind(this);
    this.removePhoto = this.removePhoto.bind(this);
    this.renderError = this.renderError.bind(this);
  }

  componentWillMount() {
    this.props.createStory(this.state.story);
  }

  removeTextArea(idx) {
  const newState = merge({}, this.state);
  newState.storyParts.splice(idx, 1);
  this.setState(newState);
}

removePhoto(idx) {
  this.props.destroyPhoto(this.state.storyParts[idx])
  const newState = merge({}, this.state);
  newState.storyParts.splice(idx, 1);
  this.setState(newState);
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
            group_position: this.state.photoGroupId,
            full_width: false,
          };
          this.props.createPhoto(photo);
          const newState = merge({}, this.state);
          newState.storyParts.push(photo);
          this.setState(newState);
        });
        const newState = merge({}, this.state);
        newState.photoGroupId += 1;
        this.setState(newState);
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
          group_position: 1,
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

    let emptyTextArea = this.state.storyParts.some( el => {
      return (el.title === "" && el.body === "")
    });

    if (this.state.storyParts.length === 0) {
      const newState = merge({}, this.state);
      newState.error.push('Please include some content!');
      this.setState(newState);
    } else if (emptyTextArea) {
      const newState = merge({}, this.state);
      newState.error.push('Text groups cannot be empty');
      this.setState(newState);
    } else if (this.state.story.title === 'default') {
      const newState = merge({}, this.state);
      newState.error.push('Name your story!');
      this.setState(newState);
    } else {
      const store = this.context.store.getState();
      const story = this.state.story;
      // story.cover_image_id = store.photos.id;
      story.id = this.props.stories[Object.keys(this.props.stories)[Object.keys(this.props.stories).length-1]].id
      if (store.photos.story_id === parseInt(story.id, 10)) {
        story.cover_image_id = store.photos.id
      }
      this.props.updateStory(story);

      const textParts = []
      this.state.storyParts.forEach(part => {
        if (part.title) {
          textParts.push(part);
        }
      });
      if (textParts.length > 0) {
        this.props.createTextArea(textParts);
      }
      hashHistory.push('/storyboard');
    }
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

  renderError() {
    if (this.state.error.length > 0) {
      let error = this.state.error[0]
      this.state.error = [];
      return (<div className="new-story-error">{error}</div>)
    } else {
      return document.getElementsByClassName("new-story-error").InnerHTML = ''
    }
  }

  partsContainer() {
    let parts = []
    let photoParts = []
    this.state.storyParts.forEach((part, idx) => {
      if (part.url) {
        photoParts.push(<StoryPhotoItem part={part} key={idx} idx={idx} edit="false" removePhoto={this.removePhoto} />)
        if (this.state.storyParts.length - 1 < idx + 1 || (this.state.storyParts[idx + 1].title === '' || this.state.storyParts[idx + 1].title) || (part.group_position !== this.state.storyParts[idx + 1].group_position)) {
            parts.push(<div className="photo-group" key={`group-${idx}`}>{photoParts}</div>);
            photoParts = []
        }
      } else {
        parts.push(<StoryTextItem part={part} key={idx} idx={idx} edit="true" removeTextArea={this.removeTextArea} setPartState={(field,content) => this.setPartState(idx,field,content)}/> )
      }
    });
    return parts;
  }

  render() {
    const story = this.props.stories
    if (story) {
    return (
      <div>
        {this.renderError()}
        <form onSubmit={this.saveAllElements} className="story-form" id="save-form">
          <StoryNewNav current_user={this.props.current_user} story={this.props.stories[Object.keys(this.props.stories)[Object.keys(this.props.stories).length-1]]} destroyStory={this.props.destroyStory}/>
          <div className="cover-image">
            <img src={this.state.coverImageUrl} />
            <div className="details">
              <button type="button" id="story-cover-photo" onClick={this.addCoverPhoto}>Click to Add or Edit Cover Photo</button>
              <div><input type="text" id="story-title" onChange={this.update("title")} placeholder="Name Your Story" /></div>
              <div><textarea id="story-description" onChange={this.update("description")} placeholder="Add a Description" /></div>
            </div>
          </div>

            <div className="story-parts">
              {this.partsContainer()}
            </div>
        </form>

        <div className="add-elements">
              <button type="button" className="add-photo" onClick={this.addPhoto}>
                Add a photo-group
              </button>
              <button type="button" className="add-text-area" onClick={this.createTextArea}>
                Add a text-only group
              </button>
        </div>

      </div>
    )
  } else {
    return (<div></div>)
  }
  }
}

StoryNew.contextTypes = {
  store: React.PropTypes.object.isRequired,
};
