import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryTextItemContainer from './story_text_item_container';

export default class StoryAddElements extends React.Component {
  constructor(props) {
    super(props);
    this.addTextArea = this.addTextArea.bind(this);
    this.addPhotoGroup = this.addPhotoGroup.bind(this);
    this.addFullWidthPhoto = this.addFullWidthPhoto.bind(this);
  }

  addTextArea() {
    return (
      <StoryTextItemContainer />
    );
  }

  render() {
    return (
      <div className="add-elements">
        <ul className="options">
          <li className="add-text-area" onClick={this.addTextArea}>Add Text Only Group</li>
          <li className="add-photo-group">Add Photo Group</li>
          <li className="add-full-photo">Add Full Width Photo</li>
        </ul>
      </div>
    );
  }
}
