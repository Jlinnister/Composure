import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryEditNav from './story_edit_nav';
import StoryTextItem from '../story_elements/story_text_item';
import StoryPhotoItem from '../story_elements/story_photo_item';
import merge from 'lodash/merge';

export default class StoryEdit extends React.Component {
  constructor(props) {
    super(props);
    this.state = { storyParts: Object.keys(this.props.parts).map(key => this.props.parts[key]),
                   coverImageUrl: this.props.stories[this.props.params.storyId].cover_image_url,
                   length: this.props.parts[Object.keys(this.props.parts)[Object.keys(this.props.parts).length-1]].position,
                   photoGroupId: this.props.parts[Object.keys(this.props.parts)[Object.keys(this.props.parts).length-1]].position,
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
    this.addFullWidthPhoto = this.addFullWidthPhoto.bind(this);
    this.createTextArea = this.createTextArea.bind(this);
    this.setPartState = this.setPartState.bind(this);
    this.saveAllElements = this.saveAllElements.bind(this);
    this.blankTextArea = this.blankTextArea.bind(this);
    this.removeTextArea = this.removeTextArea.bind(this);
    this.removePhoto = this.removePhoto.bind(this);
  }

  removeTextArea(idx) {
    this.props.destroyTextArea(this.state.storyParts[idx])
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
            story_id: this.props.params.storyId,
            position: this.state.length + 1,
            group_position: this.state.photoGroupId,
            full_width: false
          }
          this.props.createPhoto(photo);
          const newState = merge({}, this.state);
          newState.storyParts.push(photo);
          newState.length += 1;
          this.setState(newState);
        });
        const newState = merge({}, this.state);
        newState.photoGroupId += 1;
        this.setState(newState);
      }
    });
  }

  addFullWidthPhoto() {
    cloudinary.openUploadWidget(window.CLOUDINARY_SETTINGS, (error, images) => {
      if (error === null) {
        const photo = {
          url: images[0].url,
          med_url: images[0].url,
          story_id: this.props.params.storyId,
          position: this.state.length + 1,
          group_position: this.state.photoGroupId,
          full_width: true,
        };
        this.props.createPhoto(photo);
        const newState = merge({}, this.state);
        newState.photoGroupId += 1;
        newState.storyParts.push(photo);
        newState.length += 1;
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
          story_id: this.props.params.storyId,
          position: this.state.storyParts.length + 1,
          group_position: 1,
          full_width: false,
        };
        if (this.state.story.cover_image_id !== 0) {
          this.props.destroyPhoto({id: this.state.story.cover_image_id});
        }
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
        position: this.state.length + 1,
        story_id: this.props.params.storyId
      })
    );
  }

  saveAllElements(e) {
    e.preventDefault();
    const store = this.context.store.getState()
    const story = this.state.story;
    if (store.photos.story_id === parseInt(story.id, 10)) {
      story.cover_image_id = store.photos.id
    }
    this.props.updateStory(story);

    const updateTextParts = {};
    const newTextParts = [];
    this.state.storyParts.forEach( (part,idx) => {
      if (part.id && (part.title || part.body)) {
        let id = part.id;
        updateTextParts[id] = part;
      } else if (part.title || part.body) {
        newTextParts.push(part);
      }
    });

    if (Object.keys(updateTextParts).length > 0) {
      this.props.updateTextArea(updateTextParts);
    }
    if (newTextParts.length > 0) {
      this.props.createTextArea(newTextParts);
    }
    hashHistory.push('/storyboard');
  }

  createTextArea() {
    const newState = merge({}, this.state);
    newState.storyParts.push(Object.assign({}, this.blankTextArea()));
    newState.length += 1;
    this.setState(newState);
  }

  update(field) {
    return e => {
      const newStory = merge({}, this.state.story);
      newStory[field] = e.currentTarget.value;
      this.setState({ story: newStory });
    };
  }

  partsContainer() {
    let parts = []
    let photoParts = []
    this.state.storyParts.forEach((part, idx) => {
      if (part.full_width !== undefined && part.full_width === true) {
        parts.push(<div className="full-width-photo" key={`group-${idx}`}><StoryPhotoItem part={part} key={idx} idx={idx} edit="true" removePhoto={this.removePhoto} /></div>)
      } else if (part.url) {
        photoParts.push(<StoryPhotoItem part={part} key={`${idx}-photo`} idx={idx} edit="true" removePhoto={this.removePhoto}/>)
        if (this.state.storyParts.length - 1 < idx + 1 || (this.state.storyParts[idx + 1].title === '' || this.state.storyParts[idx + 1].title) || (part.group_position !== this.state.storyParts[idx + 1].group_position)) {
            parts.push(<div className="photo-group" key={`group-${idx}`}>{photoParts}</div>);
            photoParts = []
        }
      } else {
        parts.push(<StoryTextItem part={part} key={`${idx}-text`} idx={idx} edit="true" removeTextArea={this.removeTextArea} setPartState={(field,content) => this.setPartState(idx,field,content)}/> )
      }
    });
    return parts;
  }

  render() {
    const story_id = this.props.params.storyId
    const story = this.props.stories[story_id]
    let photos = this.partsContainer();
    if (story) {
    return (
      <div>
        <form onSubmit={this.saveAllElements} className="story-form" id="save-form">
          <StoryEditNav current_user={this.props.current_user} story={this.state.story} destroyStory={this.props.destroyStory}/>
          <div className="cover-image">
            <img src={this.state.coverImageUrl} />
            <div className="details">
              <button type="button" id="story-cover-photo" onClick={this.addCoverPhoto}>Click to Add or Edit Cover Photo</button>
              <div><input type="text" id="story-title" onChange={this.update("title")} value={this.state.story.title} /></div>
              <div><textarea id="story-description" onChange={this.update("description")} value={this.state.story.description} /></div>
            </div>
          </div>

            <div className="story-parts">
              {photos}
            </div>
        </form>

        <div className="add-elements">
          <button type="button" className="add-photo" onClick={this.addPhoto}>
            Add a photo-group
          </button>
          <button type="button" className="add-full-width-photo" onClick={this.addFullWidthPhoto}>
            Add a full-width photo
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

StoryEdit.contextTypes = {
  store: React.PropTypes.object.isRequired,
};
