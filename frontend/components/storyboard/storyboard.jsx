import React from 'React';
import { Link, hashHistory } from 'react-router';
import StoryboardNav from './storyboard_nav';
import StoryboardIndexContainer from './storyboard_index_container.jsx';
import EditProfile from './storyboard_edit_profile';

export default class Storyboard extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <StoryboardNav logout={this.props.logout} current_user={this.props.current_user} updateUser={this.props.updateUser}/>
        <StoryboardIndexContainer />
      </div>
    );
  }
}
