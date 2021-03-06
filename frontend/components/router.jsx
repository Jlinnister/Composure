import React from 'react';
import { Router, Route, hashHistory } from 'react-router';
import Splash from './splash/splash';
import LoginContainer from './session/login_container';
import SignupContainer from './session/signup_container';
import StoryboardContainer from './storyboard/storyboard_container';
import StoryNewContainer from './story_new/story_new_container';
import StoryShowContainer from './story_show/story_show_container';
import StoryEditContainer from './story_edit/story_edit_container';
import PublicShowContainer from './splash/public/public_show_container';
import * as StoryActions from '../actions/story_actions';
import { clearErrors } from '../actions/session_actions';

class AppRouter extends React.Component {
  constructor(props) {
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
    this.requestElementsOnEnter = this.requestElementsOnEnter.bind(this);
    this.clearStories = this.clearStories.bind(this);
  }

  _ensureLoggedIn(nextState, replace) {
    const currentState = this.context.store.getState();
    const currentUser = currentState.session.current_user;
    if (!currentUser) {
      replace('/login');
    }
  }

  _redirectIfLoggedIn(nextState, replace) {
    const currentState = this.context.store.getState();
    const currentUser = currentState.session.current_user;
    if (currentUser) {
      replace('/');
    } else {
      this.context.store.dispatch(clearErrors());
    }
  }

  requestElementsOnEnter(nextState) {
    this.context.store.dispatch(StoryActions.requestStory(nextState.params.storyId))
  }

  requestPublicElementsOnEnter(id) {
    this.context.store.dispatch(StoryActions.requestStory(id))
  }

  clearStories() {
    this.context.store.dispatch(StoryActions.clearStories());
  }

  render() {
    return (
      <Router history={hashHistory}>
        <Route path="/" component={Splash} onLeave={this.clearStories} />
        <Route path="/the-real-steel" component={PublicShowContainer} onEnter={ this.requestPublicElementsOnEnter(11) } />
        <Route path="/belize" component={PublicShowContainer} onEnter={ this.requestPublicElementsOnEnter(12) } />
        <Route path="/the-large-hadron-collider" component={PublicShowContainer} onEnter={ this.requestPublicElementsOnEnter(13) } />
        <Route path="/login" component={LoginContainer} onEnter={this._redirectIfLoggedIn} />
        <Route path="/signup" component={SignupContainer} onEnter={this._redirectIfLoggedIn} />
        <Route path="/storyboard" component={StoryboardContainer} onEnter={ this._ensureLoggedIn } />
        <Route path="/storyboard/:storyId" component={StoryShowContainer} onEnter={ this.requestElementsOnEnter } />
        <Route path="/storyboard/:storyId/edit" component={StoryEditContainer} onEnter={ this.requestElementsOnEnter } />
        <Route path="/new" component={StoryNewContainer} onEnter={ this._ensureLoggedIn } />
      </Router>
    );
  }
}

AppRouter.contextTypes = {
  store: React.PropTypes.object.isRequired,
};

export default AppRouter;
