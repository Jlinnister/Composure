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
    const { title, cover_image_id, id } = story;
    return (
      <li onClick={this.onClick}>
        <Link to={`/storyboard/${id}`}>
          {title}
        </Link>
      </li>
    );
  }
}

export default StoryIndexItem;
