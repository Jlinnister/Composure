import React from 'React';
import { Link, hashHistory } from 'react-router';
var Modal = require("react-modal");
import merge from 'lodash/merge';

const customStyles = {
    overlay : {
    background: 'rgba(0, 0, 0, 0.5)',
    position: 'fixed',
    top: '0px',
    bottom: '0px',
    left: '0px',
    right: '0px',
    zIndex: 2,
  },
  content : {
    background: 'white',
    position: 'fixed',
    top: '80px',
    left: '400px',
    height: '500px',
    width: '600px',
  },
};

export default class StoryboardNav extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      modalIsOpen: false,
      user: this.props.current_user,
    };
    this.closeModal = this.closeModal.bind(this);
    this.openModal = this.openModal.bind(this);
    this.handleSignOutSubmit = this.handleSignOutSubmit.bind(this);
    this.handleEditSubmit = this.handleEditSubmit.bind(this);
    this.update = this.update.bind(this);
    this.addAvatar = this.addAvatar.bind(this);
  }

  addAvatar() {
    cloudinary.openUploadWidget(window.CLOUDINARY_AVATAR, (error, images) => {
      if(error === null) {
        const newState = merge({}, this.state);
        const user = newState.user;
        user.avatar_url = images[0].url;
        this.setState(newState);
      }
    });
  }

  update(field) {
    return e => {
      const newState = merge({}, this.state);
      const user = newState.user;
      user[field] = e.currentTarget.value;
      console.log(newState);
      this.setState(newState);
    };
  }

  openModal() {
    this.setState({ modalIsOpen: true });
  }

  closeModal() {
    this.setState({ modalIsOpen: false });
  }

  handleSignOutSubmit() {
    this.props.logout();
  }

  handleEditSubmit(e) {
    e.preventDefault();
    const user = this.state.user;
    this.props.updateUser(user);
    this.closeModal();
  }

  render() {
    return (
      <div className="storyboard-nav">
        <nav>
          <ul className="options pull-right">
            <Link to="/new"><li className="new-story-link">New Story</li></Link>
            <li className="edit-profile-link" onClick={this.openModal}>Edit Profile</li>
            <Link to="/"><li className="signout-link" onClick={this.handleSignOutSubmit.bind(null)}>Sign Out</li></Link>
          </ul>
        </nav>

        <Modal
          isOpen={this.state.modalIsOpen}
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
          style={customStyles} >

          <div className="edit-profile-form">
            <button title="Close (Esc)" type="button" className="close-view" onClick={this.closeModal}>×</button>

            <div className="title">Your Profile</div>
            <form className="form-group" onSubmit={this.handleEditSubmit}>
              <div className="errors"></div>
              <div className="profile-photo group">
                Avatar
                <div className="avatar-container">
                  <div className="user-avatar">
                    <img className="avatar-image" src={this.state.user.avatar_url} />
                    <div className="user-avatar-plus" onClick={this.addAvatar}><i className="fa fa-plus-square-o fa-2x"></i></div>
                  </div>
                </div>
              </div>
              <label>Profile Title</label>
              <input id="user-profile-title" className="form-control" type="text" onChange={this.update("profile_title")} value={this.state.user.profile_title} />

                <label>Profile Description</label>
                <textarea id="user-profile-description" className="form-control" type="text" onChange={this.update("profile_description")} value={this.state.user.profile_description}/>

              <div className="save-cancel group">
                <input type="submit" className="submit-button submit-user" value="Save" />
                <button className="cancel-button cancel-user" onClick={this.closeModal}>Cancel</button>
              </div>
            </form>
          </div>
        </Modal>

      </div>
    );
  }
}
