import React from 'React';
import { Link, hashHistory } from 'react-router';

class StoryPhotoItem extends React.Component {

  removePhoto() {
    this.props.removePhoto(this.props.idx);
  }

  editCheck() {
    if (this.props.edit === 'true') {
      return (<button type="button" onClick={this.removePhoto.bind(this)} className="photo-item-remove">Remove</button>);
    }
  }

  render() {
    let { url } = this.props.part;

    return (
      <div className="story-photo-item" id={this.props.part.group_position} >
        <img src={url} />
        {this.editCheck()}
      </div>
		);
  }

}

export default StoryPhotoItem;
