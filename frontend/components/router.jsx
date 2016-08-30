import React from 'react';

import { Router, Route, IndexRoute, hashHistory } from 'react-router';

import Splash from './splash/splash';
import LoginContainer from './session/login_container';


class AppRouter extends React.Component {
  constructor(props) {
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
  }

  _ensureLoggedIn(nextState, replace) {
    const currentState = this.context.store.getState();
    const currentUser = currentState.current_user;
    if (!currentUser) {
      replace('/login');
    }
  }

  _redirectIfLoggedIn(nextState, replace) {
    const currentState = this.context.store.getState();
    const currentUser = currentState.current_user;
    if (currentUser) {
      replace('/');
    }
  }

  render() {
    return (
      <Router history={hashHistory}>
        <Route path="/" component={Splash} />
        <Route path="/login" component={LoginContainer} />
      </Router>
    );
  }
}

AppRouter.contextTypes = {
  store: React.PropTypes.object.isRequired,
};

export default AppRouter;
