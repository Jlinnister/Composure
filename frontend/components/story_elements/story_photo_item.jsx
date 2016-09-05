import React from 'React';
import { Link, hashHistory } from 'react-router';

class StoryPhotoItem extends React.Component {

  render() {
    let { url } = this.props.part;

    return (
      <div className="story-photo-item" id={this.props.part.group_position}>
        <img src={url} />
      </div>
		);
  }

}

export default StoryPhotoItem;
