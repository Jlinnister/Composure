import React from 'react';
import { Link, hashHistory } from 'react-router';

class StoryIndexItem extends React.Component {
  constructor(props){
    super(props);
  }

  onClick() {

  }

  render() {
    const { story } = this.props;
    const { title, cover_image_med, id } = story;
    return (
      <div onClick={this.onClick} className="photo">
        <Link to={`/storyboard/${id}`}>
          <img src={cover_image_med} alt={title} />
        </Link>
        <div className="photo-title">{title}</div>
      </div>
    );
  }
}

export default StoryIndexItem;
