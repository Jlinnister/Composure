import React from 'react';
import ReactDOM from 'react-dom';

import * as Actions from './actions/story_actions';

import Root from './components/root';

import configureStore from './store/store';

document.addEventListener("DOMContentLoaded", () => {
  let store;
  if (window.currentUser) {
    const initialState = {
      session: {
        current_user: window.currentUser,
        errors: [],
      },
    };
    window.store = store = configureStore(initialState); //remove window.store
  } else {
    window.store = store = configureStore(); //remove window.store
  }

  window.actions = Actions; //remove

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
