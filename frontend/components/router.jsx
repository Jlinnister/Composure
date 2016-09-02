import React from 'react';

import { Router, Route, IndexRoute, hashHistory } from 'react-router';

import Splash from './splash/splash';
import LoginContainer from './session/login_container';
import SignupContainer from './session/signup_container';
import StoryboardContainer from './storyboard/storyboard_container';
import StoryNewContainer from './story_new/story_new_container';
import StoryShowContainer from './story_show/story_show_container';

import * as StoryActions from '../actions/story_actions';


class AppRouter extends React.Component {
  constructor(props) {
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
    this.requestElementsOnEnter = this.requestElementsOnEnter.bind(this);
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
    }
  }

  requestElementsOnEnter(nextState) {
    store.dispatch(StoryActions.requestStory(nextState.params.storyId))
  };

  render() {
    return (
      <Router history={hashHistory}>
        <Route path="/" component={Splash} />
        <Route path="/login" component={LoginContainer} onEnter={this._redirectIfLoggedIn} />
        <Route path="/signup" component={SignupContainer} onEnter={this._redirectIfLoggedIn} />
        <Route path="/storyboard" component={StoryboardContainer} onEnter={ this._ensureLoggedIn } />
        <Route path="/storyboard/:storyId" component={StoryShowContainer} onEnter={ this.requestElementsOnEnter } />
        <Route path="/new" component={StoryNewContainer} onEnter={ this._ensureLoggedIn } />
      </Router>
    );
  }
}

AppRouter.contextTypes = {
  store: React.PropTypes.object.isRequired,
};

export default AppRouter;
